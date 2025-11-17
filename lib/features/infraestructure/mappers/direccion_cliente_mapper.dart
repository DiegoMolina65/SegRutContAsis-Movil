import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class DireccionClienteMapper {
  // DTO > Entidad
  static DireccionCliente obtenerEntidad(DireccionClienteDto dto) =>
      DireccionCliente(
        dirClId: dto.dirClId,
        dirClFechaCreacion: dto.dirClFechaCreacion,
        clId: dto.clId,
        zonId: dto.zonId,
        dirClNombreSucursal: dto.dirClNombreSucursal,
        dirClDireccion: dto.dirClDireccion,
        dirClLatitud: dto.dirClLatitud,
        dirClLongitud: dto.dirClLongitud,
        dirClEstadoDel: dto.dirClEstadoDel,
      );

  // Entidad > DTO
  static DireccionClienteDto obtenerDto(DireccionCliente entity) =>
      DireccionClienteDto(
        dirClId: entity.dirClId,
        dirClFechaCreacion: entity.dirClFechaCreacion,
        clId: entity.clId,
        zonId: entity.zonId,
        dirClNombreSucursal: entity.dirClNombreSucursal,
        dirClDireccion: entity.dirClDireccion,
        dirClLatitud: entity.dirClLatitud,
        dirClLongitud: entity.dirClLongitud,
        dirClEstadoDel: entity.dirClEstadoDel,
      );
}
