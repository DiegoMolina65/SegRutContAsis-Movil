import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario_dto.freezed.dart';
part 'usuario_dto.g.dart';

@freezed
abstract class UsuarioDto with _$UsuarioDto {
  const factory UsuarioDto({
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
    required List<String> roles,
    required int? vendedorId,
    required int? supervisorId,
    required bool esAdministrador,
    required bool esSupervisor,
    required bool esVendedor,
  }) = _UsuarioDto;
  factory UsuarioDto.fromJson(Map<String, Object?> json) =>
      _$UsuarioDtoFromJson(json);
}
