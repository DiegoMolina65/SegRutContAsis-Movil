// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Role _$RoleFromJson(Map<String, dynamic> json) => _Role(
  rolId: (json['rolId'] as num?)?.toInt(),
  rolNombre: json['rolNombre'] as String?,
  rolDescripcion: json['rolDescripcion'] as String?,
);

Map<String, dynamic> _$RoleToJson(_Role instance) => <String, dynamic>{
  'rolId': instance.rolId,
  'rolNombre': instance.rolNombre,
  'rolDescripcion': instance.rolDescripcion,
};
