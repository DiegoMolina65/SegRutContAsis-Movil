// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cliente _$ClienteFromJson(Map<String, dynamic> json) => _Cliente(
  clId: (json['clId'] as num).toInt(),
  clNombreCompleto: json['clNombreCompleto'] as String,
  clCarnetIdentidad: json['clCarnetIdentidad'] as String,
  clNitCliente: json['clNitCliente'] as String,
  clTipoCliente: json['clTipoCliente'] as String?,
  clTelefono: json['clTelefono'] as String,
);

Map<String, dynamic> _$ClienteToJson(_Cliente instance) => <String, dynamic>{
  'clId': instance.clId,
  'clNombreCompleto': instance.clNombreCompleto,
  'clCarnetIdentidad': instance.clCarnetIdentidad,
  'clNitCliente': instance.clNitCliente,
  'clTipoCliente': instance.clTipoCliente,
  'clTelefono': instance.clTelefono,
};
