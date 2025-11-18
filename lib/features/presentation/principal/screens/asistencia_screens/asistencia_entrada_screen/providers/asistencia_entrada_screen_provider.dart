import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/asistencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/asistencia/repositories/provider_asistencia_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_entrada_screen/providers/asistencia_entrada_screen_state.dart';
import 'package:med_geo_asistencia/shared/provider/geolocator/obtener_ubicacion_actual_provider.dart';

final crearAsistenciaEntradaScreenProvider = StateNotifierProvider.autoDispose
    .family<
      CrearAsistenciaEntradaScreenNotifier,
      AsistenciaEntradaScreenState,
      Function()
    >((ref, irAListaRuta) {
      final asistenciaRepositorio = ref.read(asistenciaRepositoryProvider);
      return CrearAsistenciaEntradaScreenNotifier(
        asistenciaRepositorio: asistenciaRepositorio,
        ref: ref,
        irAListaRuta: irAListaRuta,
      );
    });

class CrearAsistenciaEntradaScreenNotifier
    extends StateNotifier<AsistenciaEntradaScreenState> {
  final AsistenciaRepository asistenciaRepositorio;
  final Ref ref;
  final Function() irAListaRuta;

  CrearAsistenciaEntradaScreenNotifier({
    required this.asistenciaRepositorio,
    required this.ref,
    required this.irAListaRuta,
  }) : super(AsistenciaEntradaScreenState());

  void onCambioVenId(int valor) {
    state = state.copyWith(venId: valor);
  }

  void onResetearFormulario() {
    state = AsistenciaEntradaScreenState();
  }

  // Crear asistencia entrada
  Future<void> onCrearAsistenciaEntrada() async {
    try {
      if (state.venId == 0) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe seleccionar un Vendedor antes de registrar la asistencia.",
          ),
        );
        return;
      }

      // Obtener la posición del proveedor global (maneja permisos y errores)
      final position = await ref.read(obtenerPosicionActualProvider.future);

      final double latitud = position.latitude;
      final double longitud = position.longitude;

      final nuevaAsistenciaEntrada = Asistencia(
        asiId: 0,
        venId: state.venId,
        asiLatitud: latitud,
        asiLongitud: longitud,
        asiHoraEntrada: DateTime.now(),
        asiHoraSalida: DateTime.now(),
        nombreVendedor: "",
      );

      final asistenciaEntradaCreada = await asistenciaRepositorio
          .crearAsistenciaEntradaDia(nuevaAsistenciaEntrada);

      irAListaRuta();

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Asistencia creada con éxito: ${asistenciaEntradaCreada.asiId}",
        ),
      );

      onResetearFormulario();
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al crear asistencia: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
