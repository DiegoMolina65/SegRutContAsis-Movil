import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/visita_respository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/repositories/provider_visita_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/providers/crear_visita_screen_state.dart';

final crearVisitaScreenProvider = StateNotifierProvider.autoDispose((ref) {
  final visitaRepositorio = ref.read(visitaRepositoryProvider);
  return CrearVisitaScreenNotifier(visitaRepositorio: visitaRepositorio);
});

class CrearVisitaScreenNotifier extends StateNotifier<CrearVisitaScreenState> {
  final VisitaRepository visitaRepositorio;

  CrearVisitaScreenNotifier({required this.visitaRepositorio})
    : super(CrearVisitaScreenState());

  void onCambioRutId(int valor) {
    state = state.copyWith(rutId: valor);
  }

  void onCambioDirClId(int valor) {
    state = state.copyWith(dirClId: valor);
  }

  void onCambioVisComentario(String valor) {
    state = state.copyWith(visComentario: valor);
  }

  void onResetearFormulario() {
    state = CrearVisitaScreenState();
  }

  // Crear visita
  Future<void> onCrearVisita() async {
    try {
      if (state.rutId == 0) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Seleccione una RUTA"),
        );
        return;
      }

      if (state.dirClId == 0) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Seleccione una DIRECCION"),
        );
        return;
      }

      if (state.visComentario == "") {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Escriba un COMENTARIO"),
        );
        return;
      }

      final nuevaVisita = Visita(
        visId: 0,
        rutId: state.rutId,
        dirClId: state.dirClId,
        visComentario: state.visComentario,
        direccion: "",
        fechaEjecucionRuta: DateTime.now(),
        visEstadoDel: false,
        nombreCliente: "",
        nombreSucursalCliente: "",
        sucursalLatitud: 0.0,
        sucursalLongitud: 0.0,
        nombreZona: "",
        nombreVendedor: "",
        nombreRuta: "",
        visFechaCreacion: DateTime.now(),
      );

      final visitaCreada = await visitaRepositorio.crearVisita(nuevaVisita);

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "visita creada con éxito: ${visitaCreada.visId}",
        ),
      );

      onResetearFormulario();
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al crear ruta: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
