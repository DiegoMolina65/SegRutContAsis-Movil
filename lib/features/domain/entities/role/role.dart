import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
abstract class Role with _$Role {
  const factory Role({
    required int? rolId,
    required String? rolNombre,
    required String? rolDescripcion,
  }) = _Role;
  factory Role.fromJson(Map<String, Object?> json) => _$RoleFromJson(json);
}
