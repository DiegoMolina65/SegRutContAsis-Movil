// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Usuario _$UsuarioFromJson(Map<String, dynamic> json) => _Usuario(
  usrId: (json['usrId'] as num).toInt(),
  usrNombreCompleto: json['usrNombreCompleto'] as String,
  usrCorreo: json['usrCorreo'] as String?,
  usrTelefono: json['usrTelefono'] as String?,
  usrNitEmpleado: json['usrNitEmpleado'] as String?,
  usrCarnetIdentidad: json['usrCarnetIdentidad'] as String?,
  usrUsuarioLog: json['usrUsuarioLog'] as String?,
  usrContrasenaLog: json['usrContrasenaLog'] as String?,
  token: json['token'] ?? "",
  usrEstadoDel: json['usrEstadoDel'] as bool? ?? true,
  roles:
      (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  vendedorId: (json['vendedorId'] as num?)?.toInt() ?? null,
  supervisorId: (json['supervisorId'] as num?)?.toInt() ?? null,
  esAdministrador: json['esAdministrador'] as bool? ?? false,
  esSupervisor: json['esSupervisor'] as bool? ?? false,
  esVendedor: json['esVendedor'] as bool? ?? false,
);

Map<String, dynamic> _$UsuarioToJson(_Usuario instance) => <String, dynamic>{
  'usrId': instance.usrId,
  'usrNombreCompleto': instance.usrNombreCompleto,
  'usrCorreo': instance.usrCorreo,
  'usrTelefono': instance.usrTelefono,
  'usrNitEmpleado': instance.usrNitEmpleado,
  'usrCarnetIdentidad': instance.usrCarnetIdentidad,
  'usrUsuarioLog': instance.usrUsuarioLog,
  'usrContrasenaLog': instance.usrContrasenaLog,
  'token': instance.token,
  'usrEstadoDel': instance.usrEstadoDel,
  'roles': instance.roles,
  'vendedorId': instance.vendedorId,
  'supervisorId': instance.supervisorId,
  'esAdministrador': instance.esAdministrador,
  'esSupervisor': instance.esSupervisor,
  'esVendedor': instance.esVendedor,
};
