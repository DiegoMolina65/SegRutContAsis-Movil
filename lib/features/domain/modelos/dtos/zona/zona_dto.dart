import 'package:freezed_annotation/freezed_annotation.dart';

part 'zona_dto.freezed.dart';
part 'zona_dto.g.dart';

@freezed
abstract class ZonaDto with _$ZonaDto {
  const factory ZonaDto({
    required int zonId,
    required String zonNombre,
    required String zonDescripcion,
    required DateTime zonFechaCreacion,
    required bool zonEstadoDel,
  }) = _ZonaDto;
  factory ZonaDto.fromJson(Map<String, Object?> json) =>
      _$ZonaDtoFromJson(json);
}
