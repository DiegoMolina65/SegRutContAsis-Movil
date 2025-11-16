// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zona_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZonaDto _$ZonaDtoFromJson(Map<String, dynamic> json) => _ZonaDto(
  zonId: (json['zonId'] as num).toInt(),
  zonNombre: json['zonNombre'] as String,
  zonDescripcion: json['zonDescripcion'] as String,
  zonFechaCreacion: DateTime.parse(json['zonFechaCreacion'] as String),
  zonEstadoDel: json['zonEstadoDel'] as bool,
);

Map<String, dynamic> _$ZonaDtoToJson(_ZonaDto instance) => <String, dynamic>{
  'zonId': instance.zonId,
  'zonNombre': instance.zonNombre,
  'zonDescripcion': instance.zonDescripcion,
  'zonFechaCreacion': instance.zonFechaCreacion.toIso8601String(),
  'zonEstadoDel': instance.zonEstadoDel,
};
