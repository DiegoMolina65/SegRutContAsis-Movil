import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/eventos_ui/eventos_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'login_screen_state.freezed.dart';

@freezed
abstract class LoginScreenState with _$LoginScreenState {
  const LoginScreenState._();

  const factory LoginScreenState({
    MensajeUI? mensajeUi,
    EventoUI? eventoUI,
    ///
    @Default("") String aliasUsuario,
    @Default("") String contrasenia,
  }) = _LoginScreenState;
}
