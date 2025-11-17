import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/ruta_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/repositories/provider_ruta_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/providers/crear_ruta_screen_state.dart';

final crearRutaScreenProvider = StateNotifierProvider.autoDispose((ref) {
  final rutaRepositorio = ref.read(rutaRepositoryProvider);
  return CrearRutaScreenNotifier(rutaRepositorio: rutaRepositorio);
});

class CrearRutaScreenNotifier extends StateNotifier<CrearRutaScreenState> {
  final RutaRepository rutaRepositorio;

  CrearRutaScreenNotifier({required this.rutaRepositorio})
    : super(CrearRutaScreenState());

  void onCambioVenId(int valor) {
    state = state.copyWith(venId: valor);
  }

  void onCambioSupId(int valor) {
    state = state.copyWith(supId: valor);
  }

  void onCambioRutNombre(String valor) {
    state = state.copyWith(rutNombre: valor);
  }

  void onCambioRutComentario(String valor) {
    state = state.copyWith(rutComentario: valor);
  }

  void onCambioRutFechaEjecucion(DateTime valor) {
    state = state.copyWith(rutFechaEjecucion: valor);
  }

  void onResetearFormulario() {
    state = CrearRutaScreenState();
  }

  // Crear ruta
  Future<void> onCrearRuta() async {
    try {
      if (state.rutFechaEjecucion == null) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe seleccionar una fecha de ejecución",
          ),
        );
        return;
      }

      final nuevaRuta = Ruta(
        rutId: 0,
        venId: state.venId,
        supId: state.supId,
        rutNombre: state.rutNombre,
        rutComentario: state.rutComentario,
        rutFechaEjecucion: state.rutFechaEjecucion!,
        nombreVendedor: "",
        nombreSupervisor: null,
      );

      final rutaCreada = await rutaRepositorio.crearRuta(nuevaRuta);

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Ruta creada con éxito: ${rutaCreada.rutNombre}",
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
