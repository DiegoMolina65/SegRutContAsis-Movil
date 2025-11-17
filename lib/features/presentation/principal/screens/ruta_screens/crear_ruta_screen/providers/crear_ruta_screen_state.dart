import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'crear_ruta_screen_state.freezed.dart';

@freezed
abstract class CrearRutaScreenState with _$CrearRutaScreenState {
  const CrearRutaScreenState._();

  const factory CrearRutaScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campo para Edición (si > 0, estamos en modo edición)
    @Default(0) int rutId,

    /// Campos del formulario
    @Default(0) int venId,
    @Default(0) int supId,
    @Default("") String rutNombre,
    @Default("") String rutComentario,
    DateTime? rutFechaEjecucion,

    @Default(false) bool isCargando,
  }) = _CrearRutaScreenState;
}


