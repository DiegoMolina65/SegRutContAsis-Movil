// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidencia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Evidencia _$EvidenciaFromJson(Map<String, dynamic> json) => _Evidencia(
  eviId: (json['eviId'] as num).toInt(),
  visitaId: (json['visitaId'] as num).toInt(),
  eviTipo: json['eviTipo'] as String?,
  eviObservaciones: json['eviObservaciones'] as String?,
  eviArchivoUrl: json['eviArchivoUrl'] as String?,
);

Map<String, dynamic> _$EvidenciaToJson(_Evidencia instance) =>
    <String, dynamic>{
      'eviId': instance.eviId,
      'visitaId': instance.visitaId,
      'eviTipo': instance.eviTipo,
      'eviObservaciones': instance.eviObservaciones,
      'eviArchivoUrl': instance.eviArchivoUrl,
    };
