import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class SeguimientoVendedorMapper {
  // DTO > Entidad
  static SeguimientoVendedor obtenerEntidad(SeguimientoVendedorDto dto) =>
      SeguimientoVendedor(
        segId: dto.segId,
        venId: dto.venId,
        segFechaCreacion: dto.segFechaCreacion,
        segLatitud: dto.segLatitud,
        segLongitud: dto.segLongitud,
        vendedorNombre: dto.vendedorNombre,
      );

  // Entidad > DTO
  static SeguimientoVendedorDto obtenerDto(SeguimientoVendedor entity) =>
      SeguimientoVendedorDto(
        segId: entity.segId,
        venId: entity.venId,
        segFechaCreacion: entity.segFechaCreacion,
        segLatitud: entity.segLatitud,
        segLongitud: entity.segLongitud,
        vendedorNombre: entity.vendedorNombre,
      );
}
