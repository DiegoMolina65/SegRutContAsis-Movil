import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/ruta_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/repositories/provider_ruta_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/providers/crear_ruta_screen_state.dart';

final crearRutaScreenProvider = StateNotifierProvider.autoDispose
    .family<CrearRutaScreenNotifier, CrearRutaScreenState, int?>((ref, rutId) {
      final rutaRepositorio = ref.read(rutaRepositoryProvider);
      final notifier = CrearRutaScreenNotifier(
        rutaRepositorio: rutaRepositorio,
        rutIdInicial: rutId,
      );

      if (rutId != null && rutId > 0) {
        notifier.cargarRutaParaEdicion(rutId);
      }

      return notifier;
    });

class CrearRutaScreenNotifier extends StateNotifier<CrearRutaScreenState> {
  final RutaRepository rutaRepositorio;

  CrearRutaScreenNotifier({required this.rutaRepositorio, int? rutIdInicial})
    : super(CrearRutaScreenState(rutId: rutIdInicial ?? 0));

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
    state = CrearRutaScreenState(rutId: state.rutId);
  }

  // Cargar datos de la ruta para edición
  Future<void> cargarRutaParaEdicion(int rutId) async {
    state = state.copyWith(isCargando: true);
    try {
      final ruta = await rutaRepositorio.obtenerRutaId(rutId);

      state = state.copyWith(
        venId: ruta.venId,
        supId: ruta.supId,
        rutNombre: ruta.rutNombre,
        rutComentario: ruta.rutComentario,
        rutFechaEjecucion: ruta.rutFechaEjecucion,
        isCargando: false,
        rutId: rutId,
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al cargar datos de la ruta $rutId: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }

  // Lógica de Edición
  Future<Ruta> onEditarRuta() async {
    final rutaActualizada = Ruta(
      rutId: state.rutId,
      venId: state.venId,
      supId: state.supId,
      rutNombre: state.rutNombre,
      rutComentario: state.rutComentario,
      rutFechaEjecucion: state.rutFechaEjecucion!,
      nombreVendedor: "",
      nombreSupervisor: null,
    );

    return await rutaRepositorio.editarRuta(rutaActualizada);
  }

  // Crear ruta
  Future<Ruta> onCrearRuta() async {
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

    return await rutaRepositorio.crearRuta(nuevaRuta);
  }

  // Decide si crear o editar
  Future<void> onGuardarRuta() async {
    if (state.rutFechaEjecucion == null) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Debe seleccionar una fecha de ejecución",
        ),
      );
      return;
    }

    try {
      final bool esEdicion = state.rutId > 0;
      final Ruta rutaResultado;
      final String accion;

      if (esEdicion) {
        rutaResultado = await onEditarRuta();
        accion = "actualizada";
      } else {
        rutaResultado = await onCrearRuta();
        accion = "creada";
      }

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Ruta ${rutaResultado.rutNombre} $accion con éxito.",
        ),
      );

      if (!esEdicion) {
        onResetearFormulario();
      }
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al ${state.rutId > 0 ? 'actualizar' : 'crear'} ruta: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
