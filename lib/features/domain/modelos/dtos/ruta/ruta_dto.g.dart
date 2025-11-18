// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ruta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RutaDto _$RutaDtoFromJson(Map<String, dynamic> json) => _RutaDto(
  rutId: (json['rutId'] as num).toInt(),
  venId: (json['venId'] as num).toInt(),
  supId: (json['supId'] as num).toInt(),
  rutNombre: json['rutNombre'] as String,
  rutComentario: json['rutComentario'] as String,
  rutFechaEjecucion: DateTime.parse(json['rutFechaEjecucion'] as String),
  nombreVendedor: json['nombreVendedor'] as String?,
  nombreSupervisor: json['nombreSupervisor'] as String?,
);

Map<String, dynamic> _$RutaDtoToJson(_RutaDto instance) => <String, dynamic>{
  'rutId': instance.rutId,
  'venId': instance.venId,
  'supId': instance.supId,
  'rutNombre': instance.rutNombre,
  'rutComentario': instance.rutComentario,
  'rutFechaEjecucion': instance.rutFechaEjecucion.toIso8601String(),
  'nombreVendedor': instance.nombreVendedor,
  'nombreSupervisor': instance.nombreSupervisor,
};
