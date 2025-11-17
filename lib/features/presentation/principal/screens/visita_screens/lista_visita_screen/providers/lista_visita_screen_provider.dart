import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/repositories/visita_respository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/repositories/provider_visita_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/lista_visita_screen/providers/lista_visita_screen_state.dart';

final listaVisitaScreenProvider =
    StateNotifierProvider.autoDispose<
      ListaVisitaScreenNotifier,
      ListaVisitaScreenState
    >((ref) {
      final visitaRepositorio = ref.read(visitaRepositoryProvider);
      return ListaVisitaScreenNotifier(visitaRepositorio: visitaRepositorio)
        ..obtenerVisitas();
    });

class ListaVisitaScreenNotifier extends StateNotifier<ListaVisitaScreenState> {
  final VisitaRepository visitaRepositorio;

  ListaVisitaScreenNotifier({required this.visitaRepositorio})
    : super(const ListaVisitaScreenState());

  // Cargar visitas
  Future<void> obtenerVisitas() async {
    state = state.copyWith(isCargando: true, visitas: [], mensajeUi: null);
    try {
      final visitas = await visitaRepositorio.obtenerTodasVisitas();

      state = state.copyWith(visitas: visitas, isCargando: false);
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al obtener visitas: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }

  // Maneja la navegación a la pantalla de edición
  void onEditarVisita(int visId) {
    state = state.copyWith(
      eventoUI: MensajeUI.infoMensaje(
        "Navegar a edición de visita",
        datosExtras: visId,
      ),
    );
  }

  // Maneja la lógica de desactivación (Eliminar)
  Future<void> onEliminarVisita(int visId) async {
    try {
      final exito = await visitaRepositorio.desactivarVisita(visId);

      if (exito) {
        state = state.copyWith(
          eventoUI: MensajeUI.okMensaje(
            "Visita $visId eliminada (desactivada) con éxito.",
          ),
        );
        await obtenerVisitas();
      } else {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Error al desactivar la visita $visId. Intente de nuevo.",
          ),
        );
      }
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al eliminar visita: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
      await obtenerVisitas();
    }
  }
}
