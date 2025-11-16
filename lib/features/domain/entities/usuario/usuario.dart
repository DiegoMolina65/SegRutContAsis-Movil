import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
abstract class Usuario with _$Usuario {
  const factory Usuario({
    required int usrId,
    @Default("") token,
    required String usrNombreCompleto,
    required String? usrCorreo,
    required String? usrTelefono,
    required String? usrNitEmpleado,
    required String? usrCarnetIdentidad,
    required String? usrUsuarioLog,
    required String? usrContrasenaLog,
    required bool usrEstadoDel,
    required List<Role> roles,
    required int? vendedorId,
    required int? supervisorId,
    required bool esAdministrador,
    required bool esSupervisor,
    required bool esVendedor,
  }) = _Usuario;
  factory Usuario.fromJson(Map<String, Object?> json) =>
      _$UsuarioFromJson(json);
}
