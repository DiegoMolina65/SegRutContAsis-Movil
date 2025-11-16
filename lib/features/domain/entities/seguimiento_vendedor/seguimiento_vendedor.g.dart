// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seguimiento_vendedor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeguimientoVendedor _$SeguimientoVendedorFromJson(Map<String, dynamic> json) =>
    _SeguimientoVendedor(
      segId: (json['segId'] as num).toInt(),
      venId: (json['venId'] as num).toInt(),
      segFechaCreacion: DateTime.parse(json['segFechaCreacion'] as String),
      segLatitud: (json['segLatitud'] as num).toDouble(),
      segLongitud: (json['segLongitud'] as num).toDouble(),
      vendedorNombre: json['vendedorNombre'] as String?,
    );

Map<String, dynamic> _$SeguimientoVendedorToJson(
  _SeguimientoVendedor instance,
) => <String, dynamic>{
  'segId': instance.segId,
  'venId': instance.venId,
  'segFechaCreacion': instance.segFechaCreacion.toIso8601String(),
  'segLatitud': instance.segLatitud,
  'segLongitud': instance.segLongitud,
  'vendedorNombre': instance.vendedorNombre,
};
