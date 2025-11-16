// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => _RoleDto(
  rolId: (json['rolId'] as num).toInt(),
  rolNombre: json['rolNombre'] as String,
  rolDescripcion: json['rolDescripcion'] as String,
);

Map<String, dynamic> _$RoleDtoToJson(_RoleDto instance) => <String, dynamic>{
  'rolId': instance.rolId,
  'rolNombre': instance.rolNombre,
  'rolDescripcion': instance.rolDescripcion,
};
