// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zona.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Zona _$ZonaFromJson(Map<String, dynamic> json) => _Zona(
  zonId: (json['zonId'] as num).toInt(),
  zonNombre: json['zonNombre'] as String,
  zonDescripcion: json['zonDescripcion'] as String,
  zonFechaCreacion: DateTime.parse(json['zonFechaCreacion'] as String),
  zonEstadoDel: json['zonEstadoDel'] as bool,
);

Map<String, dynamic> _$ZonaToJson(_Zona instance) => <String, dynamic>{
  'zonId': instance.zonId,
  'zonNombre': instance.zonNombre,
  'zonDescripcion': instance.zonDescripcion,
  'zonFechaCreacion': instance.zonFechaCreacion.toIso8601String(),
  'zonEstadoDel': instance.zonEstadoDel,
};
