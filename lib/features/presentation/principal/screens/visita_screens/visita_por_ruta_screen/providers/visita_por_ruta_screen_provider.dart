import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/visita_respository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/repositories/provider_visita_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/visita_por_ruta_screen/providers/marcar_llegada_visita_usecase_provider.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/visita_por_ruta_screen/providers/visita_por_ruta_screen_state.dart';
import 'package:med_geo_asistencia/shared/provider/geolocator/obtener_ubicacion_actual_provider.dart';
import 'package:geolocator/geolocator.dart';

const double PROXIMITY_RADIUS_M = 50.0;

final visitaPorRutaScreenProvider = StateNotifierProvider.autoDispose
    .family<VisitaPorRutaNotifier, VisitaPorRutaScreenState, int>((ref, rutId) {
      final visitaRepositorio = ref.read(visitaRepositoryProvider);
      final marcarLlegadaUseCase = ref.read(marcarLlegadaVisitaUseCaseProvider);

      return VisitaPorRutaNotifier(
        ref: ref,
        visitaRepositorio: visitaRepositorio,
        marcarLlegadaUseCase: marcarLlegadaUseCase,
        rutId: rutId,
      )..obtenerVisitas();
    });

class VisitaPorRutaNotifier extends StateNotifier<VisitaPorRutaScreenState> {
  final Ref ref;
  final VisitaRepository visitaRepositorio;
  final MarcarLlegadaVisitaUseCase marcarLlegadaUseCase;
  final int rutId;

  VisitaPorRutaNotifier({
    required this.ref,
    required this.visitaRepositorio,
    required this.marcarLlegadaUseCase,
    required this.rutId,
  }) : super(const VisitaPorRutaScreenState());

  // Cargar visitas
  Future<void> obtenerVisitas() async {
    state = state.copyWith(isCargando: true, mensajeUi: null);
    try {
      final List<Visita> visitas = await visitaRepositorio.obtenerVisitaPorRuta(
        rutId,
      );

      state = state.copyWith(visitas: visitas, isCargando: false);
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al obtener visitas de la ruta $rutId: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }

  /// Marcar llegada visita: Obtiene la posición actual y ejecuta el Use Case.
  Future<void> marcarLlegada(Visita visita) async {
    state = state.copyWith(isCargando: true, mensajeUi: null);
    try {
      // Obtener la posición
      final posicion = await ref.read(obtenerPosicionActualProvider.future);

      final double sucursalLat = visita.sucursalLatitud;
      final double sucursalLong = visita.sucursalLongitud;

      // Calcular la distancia entre la posición actual y la sucursal
      final double distanceInMeters = Geolocator.distanceBetween(
        posicion.latitude,
        posicion.longitude,
        sucursalLat,
        sucursalLong,
      );

      // Verificar si está dentro del radio
      if (distanceInMeters > PROXIMITY_RADIUS_M) {
        state = state.copyWith(
          isCargando: false,
          mensajeUi: MensajeUI.errorMensaje(
            "Usted se encuentra a ${distanceInMeters.toStringAsFixed(2)} metros. La marcación solo es permitida dentro de ${PROXIMITY_RADIUS_M.toStringAsFixed(0)} metros de la ubicación de la sucursal.",
          ),
        );
        return;
      }

      final now = DateTime.now();
      final mlvHoraCalculada = Duration(
        hours: now.hour,
        minutes: now.minute,
        seconds: now.second,
      );

      final MarcarLlegadaVisita llegadaData = MarcarLlegadaVisita(
        mlvId: 0,
        visId: visita.visId,
        mlvHora: mlvHoraCalculada,
        mlvLatitud: posicion.latitude,
        mlvLongitud: posicion.longitude,
        mlvEstadoDel: false,
        mlvFechaCreacion: "",
        nombreCliente: "",
        nombreSucursalCliente: "",
        sucursalLatitud: "",
        sucursalLongitud: "",
        nombreVendedor: "",
        usuarioLogVendedor: "",
        telefonoVendedor: "",
      );

      // Ejecutar el Use Case
      final resultado = await marcarLlegadaUseCase(llegadaData);

      // Manejo de éxito
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.okMensaje(
          "Llegada marcada con éxito para ${visita.nombreCliente}. ID de marcación: ${resultado.mlvId}",
        ),
      );

      // Recargar las visitas para reflejar el nuevo estado.
      await obtenerVisitas();
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al marcar llegada para ${visita.nombreCliente}: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
