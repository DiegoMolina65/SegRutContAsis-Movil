import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'crear_visita_screen_state.freezed.dart';

@freezed
abstract class CrearVisitaScreenState with _$CrearVisitaScreenState {
  const CrearVisitaScreenState._();

  const factory CrearVisitaScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campos del formulario
    @Default(0) int rutId,
    @Default(0) int dirClId,
    @Default("") String visComentario,

    @Default(false) bool isCargando,
  }) = _CrearVisitaScreenState;
}
