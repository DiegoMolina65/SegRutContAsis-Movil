// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direccion_cliente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DireccionClienteDto _$DireccionClienteDtoFromJson(Map<String, dynamic> json) =>
    _DireccionClienteDto(
      dirClId: (json['dirClId'] as num).toInt(),
      dirClFechaCreacion: DateTime.parse(json['dirClFechaCreacion'] as String),
      clId: (json['clId'] as num).toInt(),
      zonId: (json['zonId'] as num?)?.toInt(),
      dirClNombreSucursal: json['dirClNombreSucursal'] as String?,
      dirClDireccion: json['dirClDireccion'] as String,
      dirClLatitud: (json['dirClLatitud'] as num).toDouble(),
      dirClLongitud: (json['dirClLongitud'] as num).toDouble(),
      dirClEstadoDel: json['dirClEstadoDel'] as bool,
    );

Map<String, dynamic> _$DireccionClienteDtoToJson(
  _DireccionClienteDto instance,
) => <String, dynamic>{
  'dirClId': instance.dirClId,
  'dirClFechaCreacion': instance.dirClFechaCreacion.toIso8601String(),
  'clId': instance.clId,
  'zonId': instance.zonId,
  'dirClNombreSucursal': instance.dirClNombreSucursal,
  'dirClDireccion': instance.dirClDireccion,
  'dirClLatitud': instance.dirClLatitud,
  'dirClLongitud': instance.dirClLongitud,
  'dirClEstadoDel': instance.dirClEstadoDel,
};
