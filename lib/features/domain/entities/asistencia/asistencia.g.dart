// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asistencia.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Asistencia _$AsistenciaFromJson(Map<String, dynamic> json) => _Asistencia(
  asiId: (json['asiId'] as num).toInt(),
  venId: (json['venId'] as num).toInt(),
  asiHoraEntrada: DateTime.parse(json['asiHoraEntrada'] as String),
  asiHoraSalida: DateTime.parse(json['asiHoraSalida'] as String),
  asiLatitud: (json['asiLatitud'] as num).toDouble(),
  asiLongitud: (json['asiLongitud'] as num).toDouble(),
  nombreVendedor: json['nombreVendedor'] as String,
);

Map<String, dynamic> _$AsistenciaToJson(_Asistencia instance) =>
    <String, dynamic>{
      'asiId': instance.asiId,
      'venId': instance.venId,
      'asiHoraEntrada': instance.asiHoraEntrada.toIso8601String(),
      'asiHoraSalida': instance.asiHoraSalida.toIso8601String(),
      'asiLatitud': instance.asiLatitud,
      'asiLongitud': instance.asiLongitud,
      'nombreVendedor': instance.nombreVendedor,
    };
