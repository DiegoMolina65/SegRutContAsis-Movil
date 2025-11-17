import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'asistencia_entrada_screen_state.freezed.dart';

@freezed
abstract class AsistenciaEntradaScreenState
    with _$AsistenciaEntradaScreenState {
  const AsistenciaEntradaScreenState._();

  const factory AsistenciaEntradaScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campos del formulario
    @Default(0) int venId,
    @Default(0.0) double asiLatitud,
    @Default(0.0) double asiLongitud,

    @Default(false) bool isCargando,
  }) = _AsistenciaEntradaScreenState;
}
