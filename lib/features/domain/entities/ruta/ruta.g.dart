// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ruta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ruta _$RutaFromJson(Map<String, dynamic> json) => _Ruta(
  rutId: (json['rutId'] as num).toInt(),
  venId: (json['venId'] as num).toInt(),
  supId: (json['supId'] as num).toInt(),
  rutNombre: json['rutNombre'] as String,
  rutComentario: json['rutComentario'] as String,
  rutFechaEjecucion: DateTime.parse(json['rutFechaEjecucion'] as String),
  nombreVendedor: json['nombreVendedor'] as String,
  nombreSupervisor: json['nombreSupervisor'] as String?,
);

Map<String, dynamic> _$RutaToJson(_Ruta instance) => <String, dynamic>{
  'rutId': instance.rutId,
  'venId': instance.venId,
  'supId': instance.supId,
  'rutNombre': instance.rutNombre,
  'rutComentario': instance.rutComentario,
  'rutFechaEjecucion': instance.rutFechaEjecucion.toIso8601String(),
  'nombreVendedor': instance.nombreVendedor,
  'nombreSupervisor': instance.nombreSupervisor,
};
