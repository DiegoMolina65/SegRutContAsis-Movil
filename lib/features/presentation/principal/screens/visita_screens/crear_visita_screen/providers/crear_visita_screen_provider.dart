import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/visita_respository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/repositories/provider_visita_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/providers/crear_visita_screen_state.dart';

final crearVisitaScreenProvider = StateNotifierProvider.autoDispose
    .family<CrearVisitaScreenNotifier, CrearVisitaScreenState, int?>((
      ref,
      visId,
    ) {
      final visitaRepositorio = ref.read(visitaRepositoryProvider);
      final notifier = CrearVisitaScreenNotifier(
        visitaRepositorio: visitaRepositorio,
        visIdInicial: visId,
      );

      if (visId != null && visId > 0) {
        notifier.cargarVisitaParaEdicion(visId);
      }

      return notifier;
    });

class CrearVisitaScreenNotifier extends StateNotifier<CrearVisitaScreenState> {
  final VisitaRepository visitaRepositorio;

  CrearVisitaScreenNotifier({
    required this.visitaRepositorio,
    int? visIdInicial,
  }) : super(CrearVisitaScreenState(visId: visIdInicial ?? 0));

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
    state = CrearVisitaScreenState(visId: state.visId);
  }

  // Cargar datos de la visita para edición
  Future<void> cargarVisitaParaEdicion(int visId) async {
    state = state.copyWith(isCargando: true);
    try {
      final visita = await visitaRepositorio.obtenerVisitaId(visId);

      state = state.copyWith(
        rutId: visita.rutId,
        dirClId: visita.dirClId,
        visComentario: visita.visComentario,
        isCargando: false,
        visId: visId,
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al cargar datos de la visita $visId: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }

  // Lógica de Edición
  Future<Visita> onEditarVisita() async {
    final visitaActualizada = Visita(
      visId: state.visId,
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

    return await visitaRepositorio.editarVisita(visitaActualizada);
  }

  // Lógica de Creación
  Future<Visita> onCrearVisita() async {
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

    return await visitaRepositorio.crearVisita(nuevaVisita);
  }

  // Decide si crear o editar
  Future<void> onGuardarVisita() async {
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

    try {
      final bool esEdicion = state.visId > 0;
      final Visita visitaResultado;
      final String accion;

      if (esEdicion) {
        visitaResultado = await onEditarVisita();
        accion = "actualizada";
      } else {
        visitaResultado = await onCrearVisita();
        accion = "creada";
      }

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Visita ${visitaResultado.visId} $accion con éxito.",
        ),
      );

      if (!esEdicion) {
        onResetearFormulario();
      }
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al ${state.visId > 0 ? 'actualizar' : 'crear'} visita: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
