import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_dto.freezed.dart';
part 'role_dto.g.dart';

@freezed
abstract class RoleDto with _$RoleDto {
  const factory RoleDto({
    required int rolId,
    required String rolNombre,
    required String rolDescripcion,
  }) = _RoleDto;
  factory RoleDto.fromJson(Map<String, Object?> json) =>
      _$RoleDtoFromJson(json);
}
