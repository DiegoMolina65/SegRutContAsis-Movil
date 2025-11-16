import 'package:freezed_annotation/freezed_annotation.dart';

part 'resultado.freezed.dart';

@freezed
sealed class Resultado<T> with _$Resultado<T> {
  const Resultado._();
  const factory Resultado.ok(T valor) = OkResultado<T>;
  const factory Resultado.error(String mensaje) = ErrorResultado<T>;
// const factory Resultado.error(String mensaje, Exception exception) = _ResultadoError<T>;
}