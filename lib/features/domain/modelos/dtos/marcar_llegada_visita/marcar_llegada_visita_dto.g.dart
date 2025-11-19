// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marcar_llegada_visita_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MarcarLlegadaVisitaDto _$MarcarLlegadaVisitaDtoFromJson(
  Map<String, dynamic> json,
) => _MarcarLlegadaVisitaDto(
  mlvId: (json['mlvId'] as num).toInt(),
  visId: (json['visId'] as num).toInt(),
  mlvHora: json['mlvHora'] as String?,
  mlvLatitud: (json['mlvLatitud'] as num).toDouble(),
  mlvLongitud: (json['mlvLongitud'] as num).toDouble(),
  mlvEstadoDel: json['mlvEstadoDel'] as bool,
  mlvFechaCreacion: json['mlvFechaCreacion'] as String,
  nombreCliente: json['nombreCliente'] as String?,
  nombreSucursalCliente: json['nombreSucursalCliente'] as String?,
  sucursalLatitud: (json['sucursalLatitud'] as num?)?.toDouble(),
  sucursalLongitud: (json['sucursalLongitud'] as num?)?.toDouble(),
  nombreVendedor: json['nombreVendedor'] as String?,
  usuarioLogVendedor: json['usuarioLogVendedor'] as String?,
  telefonoVendedor: json['telefonoVendedor'] as String?,
);

Map<String, dynamic> _$MarcarLlegadaVisitaDtoToJson(
  _MarcarLlegadaVisitaDto instance,
) => <String, dynamic>{
  'mlvId': instance.mlvId,
  'visId': instance.visId,
  'mlvHora': instance.mlvHora,
  'mlvLatitud': instance.mlvLatitud,
  'mlvLongitud': instance.mlvLongitud,
  'mlvEstadoDel': instance.mlvEstadoDel,
  'mlvFechaCreacion': instance.mlvFechaCreacion,
  'nombreCliente': instance.nombreCliente,
  'nombreSucursalCliente': instance.nombreSucursalCliente,
  'sucursalLatitud': instance.sucursalLatitud,
  'sucursalLongitud': instance.sucursalLongitud,
  'nombreVendedor': instance.nombreVendedor,
  'usuarioLogVendedor': instance.usuarioLogVendedor,
  'telefonoVendedor': instance.telefonoVendedor,
};
