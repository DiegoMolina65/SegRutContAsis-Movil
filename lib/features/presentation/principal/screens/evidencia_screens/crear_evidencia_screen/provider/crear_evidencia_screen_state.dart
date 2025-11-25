import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'crear_evidencia_screen_state.freezed.dart';

@freezed
abstract class CrearEvidenciaScreenState with _$CrearEvidenciaScreenState {
  const CrearEvidenciaScreenState._();

  const factory CrearEvidenciaScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campos del formulario
    @Default(0) int visitaId,
    @Default("") String eviTipo,
    @Default("") String eviObservaciones,

    @Default(false) bool isCargando,
  }) = _CrearEvidenciaScreenState;
}
