// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitaDto _$VisitaDtoFromJson(Map<String, dynamic> json) => _VisitaDto(
  visId: (json['visId'] as num).toInt(),
  rutId: (json['rutId'] as num).toInt(),
  dirClId: (json['dirClId'] as num).toInt(),
  visFechaCreacion: DateTime.parse(json['visFechaCreacion'] as String),
  visEstadoDel: json['visEstadoDel'] as bool,
  visComentario: json['visComentario'] as String,
  nombreCliente: json['nombreCliente'] as String,
  nombreSucursalCliente: json['nombreSucursalCliente'] as String,
  sucursalLatitud: (json['sucursalLatitud'] as num).toDouble(),
  sucursalLongitud: (json['sucursalLongitud'] as num).toDouble(),
  nombreZona: json['nombreZona'] as String,
  direccion: json['direccion'] as String,
  nombreVendedor: json['nombreVendedor'] as String,
  nombreRuta: json['nombreRuta'] as String,
  fechaEjecucionRuta: DateTime.parse(json['fechaEjecucionRuta'] as String),
);

Map<String, dynamic> _$VisitaDtoToJson(_VisitaDto instance) =>
    <String, dynamic>{
      'visId': instance.visId,
      'rutId': instance.rutId,
      'dirClId': instance.dirClId,
      'visFechaCreacion': instance.visFechaCreacion.toIso8601String(),
      'visEstadoDel': instance.visEstadoDel,
      'visComentario': instance.visComentario,
      'nombreCliente': instance.nombreCliente,
      'nombreSucursalCliente': instance.nombreSucursalCliente,
      'sucursalLatitud': instance.sucursalLatitud,
      'sucursalLongitud': instance.sucursalLongitud,
      'nombreZona': instance.nombreZona,
      'direccion': instance.direccion,
      'nombreVendedor': instance.nombreVendedor,
      'nombreRuta': instance.nombreRuta,
      'fechaEjecucionRuta': instance.fechaEjecucionRuta.toIso8601String(),
    };
