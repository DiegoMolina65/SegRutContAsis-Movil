import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'asistencia_salida_screen_state.freezed.dart';

@freezed
abstract class AsistenciaSalidaScreenState with _$AsistenciaSalidaScreenState {
  const AsistenciaSalidaScreenState._();

  const factory AsistenciaSalidaScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campo del formulario
    @Default(0) int venId,
    // Puedes dejar asiLatitud y asiLongitud, pero no se usan en la salida
    @Default(false) bool isCargando,
  }) = _AsistenciaSalidaScreenState;
}
