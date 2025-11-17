import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/repositories/ruta_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/repositories/provider_ruta_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/lista_ruta_screen/providers/lista_ruta_screen_state.dart';

final listaRutaScreenProvider =
    StateNotifierProvider.autoDispose<
      ListaRutaScreenNotifier,
      ListaRutaScreenState
    >((ref) {
      final rutaRepositorio = ref.read(rutaRepositoryProvider);
      return ListaRutaScreenNotifier(rutaRepositorio: rutaRepositorio)
        ..obtenerRutas();
    });

class ListaRutaScreenNotifier extends StateNotifier<ListaRutaScreenState> {
  final RutaRepository rutaRepositorio;

  ListaRutaScreenNotifier({required this.rutaRepositorio})
    : super(const ListaRutaScreenState());

  // Cargar rutas
  Future<void> obtenerRutas() async {
    state = state.copyWith(isCargando: true, rutas: [], mensajeUi: null);
    try {
      final rutas = await rutaRepositorio.obtenerRutas();

      state = state.copyWith(rutas: rutas, isCargando: false);
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al obtener rutas: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }

  // Maneja la navegación a la pantalla de edición
  void onEditarRuta(int rutId) {
    state = state.copyWith(
      eventoUI: MensajeUI.infoMensaje(
        "Navegar a edición de ruta",
        datosExtras: rutId, 
      ),
    );
  }

  // Maneja la lógica de desactivación (Eliminar)
  Future<void> onEliminarRuta(int rutId) async {
    try {
      final exito = await rutaRepositorio.desactivarRuta(rutId);

      if (exito) {
        state = state.copyWith(
          eventoUI: MensajeUI.okMensaje("Ruta $rutId eliminada (desactivada) con éxito."),
        );
        await obtenerRutas();
      } else {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Error al desactivar la Ruta $rutId. Intente de nuevo."),
        );
      }
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al eliminar ruta: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
      await obtenerRutas(); 
    }
  }
}
