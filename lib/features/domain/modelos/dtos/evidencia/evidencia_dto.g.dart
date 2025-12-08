// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evidencia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvidenciaDto _$EvidenciaDtoFromJson(Map<String, dynamic> json) =>
    _EvidenciaDto(
      eviId: (json['eviId'] as num).toInt(),
      eviFechaCreacion: DateTime.parse(json['eviFechaCreacion'] as String),
      visitaId: (json['visitaId'] as num).toInt(),
      eviTipo: json['eviTipo'] as String?,
      eviObservaciones: json['eviObservaciones'] as String?,
      eviArchivoUrl: json['eviArchivoUrl'] as String?,
    );

Map<String, dynamic> _$EvidenciaDtoToJson(_EvidenciaDto instance) =>
    <String, dynamic>{
      'eviId': instance.eviId,
      'eviFechaCreacion': instance.eviFechaCreacion.toIso8601String(),
      'visitaId': instance.visitaId,
      'eviTipo': instance.eviTipo,
      'eviObservaciones': instance.eviObservaciones,
      'eviArchivoUrl': instance.eviArchivoUrl,
    };
