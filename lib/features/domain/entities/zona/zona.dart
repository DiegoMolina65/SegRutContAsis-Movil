import 'package:freezed_annotation/freezed_annotation.dart';

part 'zona.freezed.dart';
part 'zona.g.dart';

@freezed
abstract class Zona with _$Zona {
  const factory Zona({
    required int zonId,
    required String zonNombre,
    required String zonDescripcion,
    required DateTime zonFechaCreacion,
    required bool zonEstadoDel,
  }) = _Zona;
  factory Zona.fromJson(Map<String, Object?> json) => _$ZonaFromJson(json);
}
