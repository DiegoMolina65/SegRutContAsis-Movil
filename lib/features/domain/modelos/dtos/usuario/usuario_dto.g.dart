// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsuarioDto _$UsuarioDtoFromJson(Map<String, dynamic> json) => _UsuarioDto(
  usrId: (json['usrId'] as num).toInt(),
  token: json['token'] ?? "",
  usrNombreCompleto: json['usrNombreCompleto'] as String,
  usrCorreo: json['usrCorreo'] as String?,
  usrTelefono: json['usrTelefono'] as String?,
  usrNitEmpleado: json['usrNitEmpleado'] as String?,
  usrCarnetIdentidad: json['usrCarnetIdentidad'] as String?,
  usrUsuarioLog: json['usrUsuarioLog'] as String?,
  usrContrasenaLog: json['usrContrasenaLog'] as String?,
  usrEstadoDel: json['usrEstadoDel'] as bool,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
  vendedorId: (json['vendedorId'] as num?)?.toInt(),
  supervisorId: (json['supervisorId'] as num?)?.toInt(),
  esAdministrador: json['esAdministrador'] as bool,
  esSupervisor: json['esSupervisor'] as bool,
  esVendedor: json['esVendedor'] as bool,
);

Map<String, dynamic> _$UsuarioDtoToJson(_UsuarioDto instance) =>
    <String, dynamic>{
      'usrId': instance.usrId,
      'token': instance.token,
      'usrNombreCompleto': instance.usrNombreCompleto,
      'usrCorreo': instance.usrCorreo,
      'usrTelefono': instance.usrTelefono,
      'usrNitEmpleado': instance.usrNitEmpleado,
      'usrCarnetIdentidad': instance.usrCarnetIdentidad,
      'usrUsuarioLog': instance.usrUsuarioLog,
      'usrContrasenaLog': instance.usrContrasenaLog,
      'usrEstadoDel': instance.usrEstadoDel,
      'roles': instance.roles,
      'vendedorId': instance.vendedorId,
      'supervisorId': instance.supervisorId,
      'esAdministrador': instance.esAdministrador,
      'esSupervisor': instance.esSupervisor,
      'esVendedor': instance.esVendedor,
    };
