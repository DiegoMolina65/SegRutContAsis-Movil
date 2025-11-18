// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asistencia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AsistenciaDto _$AsistenciaDtoFromJson(Map<String, dynamic> json) =>
    _AsistenciaDto(
      asiId: (json['asiId'] as num).toInt(),
      venId: (json['venId'] as num).toInt(),
      asiHoraEntrada: DateTime.parse(json['asiHoraEntrada'] as String),
      asiHoraSalida: json['asiHoraSalida'] == null
          ? null
          : DateTime.parse(json['asiHoraSalida'] as String),
      asiLatitud: (json['asiLatitud'] as num).toDouble(),
      asiLongitud: (json['asiLongitud'] as num).toDouble(),
      nombreVendedor: json['nombreVendedor'] as String?,
    );

Map<String, dynamic> _$AsistenciaDtoToJson(_AsistenciaDto instance) =>
    <String, dynamic>{
      'asiId': instance.asiId,
      'venId': instance.venId,
      'asiHoraEntrada': instance.asiHoraEntrada.toIso8601String(),
      'asiHoraSalida': instance.asiHoraSalida?.toIso8601String(),
      'asiLatitud': instance.asiLatitud,
      'asiLongitud': instance.asiLongitud,
      'nombreVendedor': instance.nombreVendedor,
    };
