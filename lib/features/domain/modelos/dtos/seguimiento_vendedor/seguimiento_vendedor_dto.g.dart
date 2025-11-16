// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seguimiento_vendedor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeguimientoVendedorDto _$SeguimientoVendedorDtoFromJson(
  Map<String, dynamic> json,
) => _SeguimientoVendedorDto(
  segId: (json['segId'] as num).toInt(),
  venId: (json['venId'] as num).toInt(),
  segFechaCreacion: DateTime.parse(json['segFechaCreacion'] as String),
  segLatitud: (json['segLatitud'] as num).toDouble(),
  segLongitud: (json['segLongitud'] as num).toDouble(),
  vendedorNombre: json['vendedorNombre'] as String?,
);

Map<String, dynamic> _$SeguimientoVendedorDtoToJson(
  _SeguimientoVendedorDto instance,
) => <String, dynamic>{
  'segId': instance.segId,
  'venId': instance.venId,
  'segFechaCreacion': instance.segFechaCreacion.toIso8601String(),
  'segLatitud': instance.segLatitud,
  'segLongitud': instance.segLongitud,
  'vendedorNombre': instance.vendedorNombre,
};
