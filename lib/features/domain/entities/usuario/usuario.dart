import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
abstract class Usuario with _$Usuario {
  const Usuario._();

  const factory Usuario({
    required int usrId,
    required String usrNombreCompleto,
    required String? usrCorreo,
    required String? usrTelefono,
    required String? usrNitEmpleado,
    required String? usrCarnetIdentidad,
    required String? usrUsuarioLog,
    required String? usrContrasenaLog,
    @Default("") token,
    @Default(true) bool usrEstadoDel,
    @Default([]) List<Role> roles,
    @Default(null) int? vendedorId,
    @Default(null) int? supervisorId,
    @Default(false) bool esAdministrador,
    @Default(false) bool esSupervisor,
    @Default(false) bool esVendedor,
  }) = _Usuario;

  /// Constructor por nombre de atributos para integrar a la tabla drift
  factory Usuario.desdeBaseDeDatos({
    required int id,
    required String nombre_completo,
    required String? correo,
    required String? telefono,
    required String? nit,
    required String? ci,
    required String? alias,
    required String? contrasenia,
  }) {
   return Usuario(usrId: id, usrNombreCompleto: nombre_completo, usrCorreo: correo, usrTelefono: telefono, usrNitEmpleado: nit, usrCarnetIdentidad: ci, usrUsuarioLog: alias, usrContrasenaLog: contrasenia);
  }

  factory Usuario.fromJson(Map<String, Object?> json) =>
      _$UsuarioFromJson(json);
}
