import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class UsuarioMapper {
  // DTO > Entidad
  static Usuario obtenerEntidad(UsuarioDto dto) => Usuario(
    usrId: dto.usrId,
    token: dto.token,
    usrNombreCompleto: dto.usrNombreCompleto,
    usrCorreo: dto.usrCorreo,
    usrTelefono: dto.usrTelefono,
    usrNitEmpleado: dto.usrNitEmpleado,
    usrCarnetIdentidad: dto.usrCarnetIdentidad,
    usrUsuarioLog: dto.usrUsuarioLog,
    usrContrasenaLog: dto.usrContrasenaLog,
    usrEstadoDel: dto.usrEstadoDel,
    roles: dto.roles
        .map((r) => Role(rolNombre: r, rolId: 0, rolDescripcion: ""))
        .toList(),
    vendedorId: dto.vendedorId,
    supervisorId: dto.supervisorId,
    esAdministrador: dto.esAdministrador,
    esSupervisor: dto.esSupervisor,
    esVendedor: dto.esVendedor,
  );
}
