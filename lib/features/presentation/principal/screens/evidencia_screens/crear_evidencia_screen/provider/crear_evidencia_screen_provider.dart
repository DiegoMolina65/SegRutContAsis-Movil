import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/evidencia_repository.dart';
import 'package:med_geo_asistencia/features/domain/repositories/marcar_llegada_visita_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/evidencia/repositories/provider_evidencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/marcar_llegada_visita/repositories/provider_marcar_llegada_visita_repository_impl.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/evidencia_screens/crear_evidencia_screen/provider/crear_evidencia_screen_state.dart';
import 'package:med_geo_asistencia/shared/provider/geolocator/obtener_ubicacion_actual_provider.dart';
import 'package:geolocator/geolocator.dart';

final crearEvidenciaScreenProvider = StateNotifierProvider.autoDispose
    .family<CrearEvidenciaScreenNotifier, CrearEvidenciaScreenState, int>((
      ref,
      visitaId,
    ) {
      final evidenciaRepositorio = ref.read(evidenciaRepositoryProvider);
      final marcarLlegadaVisitaRepositorio = ref.read(
        marcarLlegadaVisitaRepositoryProvider,
      );

      return CrearEvidenciaScreenNotifier(
        ref: ref,
        evidenciaRepositorio: evidenciaRepositorio,
        marcarLlegadaRepositorio: marcarLlegadaVisitaRepositorio,
        visitaId: visitaId,
      );
    });

class CrearEvidenciaScreenNotifier
    extends StateNotifier<CrearEvidenciaScreenState> {
  final Ref ref;
  final EvidenciaRepository evidenciaRepositorio;
  final MarcarLlegadaVisitaRepository marcarLlegadaRepositorio;
  final int initialVisitaId;

  CrearEvidenciaScreenNotifier({
    required this.ref,
    required this.evidenciaRepositorio,
    required int visitaId,
    required this.marcarLlegadaRepositorio,
  }) : initialVisitaId = visitaId,
       super(CrearEvidenciaScreenState(visitaId: visitaId));

  void onCambioEviTipo(String valor) {
    state = state.copyWith(eviTipo: valor);
  }

  void onCambioEviObservaciones(String valor) {
    state = state.copyWith(eviObservaciones: valor);
  }

  void onSeleccionarArchivo(File archivo) {
    state = state.copyWith(archivo: archivo);
  }

  void onResetearFormulario() {
    state = CrearEvidenciaScreenState(visitaId: initialVisitaId);
  }

  Future<String?> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.single.path != null) {
      final file = File(result.files.single.path!);
      onSeleccionarArchivo(file);
      return result.files.single.name;
    }
    return null;
  }

  Future<void> onCrearEvidencia() async {
    try {
      // VALIDACIONES
      if (state.eviTipo.isEmpty) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe ingresar el TIPO de evidencia",
          ),
        );
        return;
      }
      if (state.eviObservaciones.isEmpty) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Debe ingresar OBSERVACIONES"),
        );
        return;
      }
      if (state.visitaId == 0) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("El ID de Visita no es válido."),
        );
        return;
      }

      // Obtener ubicación actual usando el provider oficial
      final Position posicion = await ref.read(
        obtenerPosicionActualProvider.future,
      );

      // Crear Evidencia
      final nuevoEvidencia = Evidencia(
        eviId: 0,
        visitaId: state.visitaId,
        eviTipo: state.eviTipo,
        eviObservaciones: state.eviObservaciones,
        eviFechaCreacion: DateTime.now(),
        eviArchivoUrl: state.archivo?.path,
      );

      await evidenciaRepositorio.crearEvidencia(nuevoEvidencia);

      //  Crear la marcación llegada visita (con GPS real)
      final ahora = DateTime.now();
      final horaString =
          "${ahora.hour.toString().padLeft(2, '0')}:"
          "${ahora.minute.toString().padLeft(2, '0')}:"
          "${ahora.second.toString().padLeft(2, '0')}";

      final llegada = MarcarLlegadaVisita(
        mlvId: 0,
        visId: state.visitaId,
        mlvHora: horaString,
        mlvLatitud: posicion.latitude,
        mlvLongitud: posicion.longitude,

        mlvEstadoDel: false,
        mlvFechaCreacion: "",
        nombreCliente: "",
        nombreSucursalCliente: "",
        sucursalLatitud: 0.0,
        sucursalLongitud: 0.0,
        nombreVendedor: "",
        usuarioLogVendedor: "",
        telefonoVendedor: "",
      );

      await marcarLlegadaRepositorio.crearMarcarLlegadaVisita(llegada);

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Evidencia creada y llegada marcada con éxito.",
        ),
      );

      onResetearFormulario();
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al crear evidencia o marcar llegada: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
