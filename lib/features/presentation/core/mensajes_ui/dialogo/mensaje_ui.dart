import 'package:freezed_annotation/freezed_annotation.dart';

part 'mensaje_ui.freezed.dart';

@Freezed(equal: false)
abstract class MensajeUI with _$MensajeUI {
  MensajeUI._();
  factory MensajeUI.errorMensaje(final String mensaje,
      {final String? titulo,
        final StackTrace? stackTrace}) = ErrorMensajeUI;
  factory MensajeUI.alertaMensaje(String mensaje,
      {String? titulo}) = AlertaMensajeUI;
  factory MensajeUI.okMensaje(String mensaje, {String? titulo}) =
  OkMensajeUI;
}
