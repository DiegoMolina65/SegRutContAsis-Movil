import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class ClienteMapper {
  // DTO > Entidad
  static Cliente obtenerEntidad(ClienteDto dto) => Cliente(
    clId: dto.clId,
    clNombreCompleto: dto.clNombreCompleto,
    clCarnetIdentidad: dto.clCarnetIdentidad,
    clNitCliente: dto.clNitCliente,
    clTipoCliente: dto.clTipoCliente,
    clTelefono: dto.clTelefono,
  );

  // Entidad > DTO
  static ClienteDto obtenerDto(Cliente entity) => ClienteDto(
    clId: entity.clId,
    clNombreCompleto: entity.clNombreCompleto,
    clCarnetIdentidad: entity.clCarnetIdentidad,
    clNitCliente: entity.clNitCliente,
    clTipoCliente: entity.clTipoCliente,
    clTelefono: entity.clTelefono,
  );
}
