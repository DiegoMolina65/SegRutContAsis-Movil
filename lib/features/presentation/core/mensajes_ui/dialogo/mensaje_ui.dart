import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/eventos_ui/eventos_ui.dart';

part 'mensaje_ui.freezed.dart';

@Freezed(equal: false)
abstract class MensajeUI extends EventoUI with _$MensajeUI {
  MensajeUI._();
  factory MensajeUI.errorMensaje(
    final String mensaje, {
    final String? titulo,
    final StackTrace? stackTrace,
    Object? datosExtras,
  }) = ErrorMensajeUI;
  factory MensajeUI.alertaMensaje(
    String mensaje, {
    String? titulo,
    Object? datosExtras,
  }) = AlertaMensajeUI;
  factory MensajeUI.okMensaje(
    String mensaje, {
    String? titulo,
    Object? datosExtras,
  }) = OkMensajeUI;

  factory MensajeUI.infoMensaje(
    String mensaje, {
    String? titulo,
    Object? datosExtras,
  }) = InfoMensajeUI;
}
