import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/eventos_ui/eventos_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    MensajeUI? mensajeUi,
    EventoUI? eventoUI,
    ///
    @Default("Cargando...") String mensajeCargando,
  }) = _SplashScreenState;
}
