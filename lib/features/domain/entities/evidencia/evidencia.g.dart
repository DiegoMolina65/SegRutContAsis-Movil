// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidencia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Evidencia _$EvidenciaFromJson(Map<String, dynamic> json) => _Evidencia(
  eviId: (json['eviId'] as num).toInt(),
  eviFechaCreacion: DateTime.parse(json['eviFechaCreacion'] as String),
  visitaId: (json['visitaId'] as num).toInt(),
  eviTipo: json['eviTipo'] as String?,
  eviObservaciones: json['eviObservaciones'] as String?,
);

Map<String, dynamic> _$EvidenciaToJson(_Evidencia instance) =>
    <String, dynamic>{
      'eviId': instance.eviId,
      'eviFechaCreacion': instance.eviFechaCreacion.toIso8601String(),
      'visitaId': instance.visitaId,
      'eviTipo': instance.eviTipo,
      'eviObservaciones': instance.eviObservaciones,
    };
