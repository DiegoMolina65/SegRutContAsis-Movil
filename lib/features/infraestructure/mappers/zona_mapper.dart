import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class ZonaMapper {
  // DTO > Entidad
  static Zona obtenerEntidad(ZonaDto dto) => Zona(
    zonId: dto.zonId,
    zonNombre: dto.zonNombre,
    zonDescripcion: dto.zonDescripcion,
    zonFechaCreacion: dto.zonFechaCreacion,
    zonEstadoDel: dto.zonEstadoDel,
  );

  // Entidad > DTO
  static ZonaDto obtenerDto(Zona entity) => ZonaDto(
    zonId: entity.zonId,
    zonNombre: entity.zonNombre,
    zonDescripcion: entity.zonDescripcion,
    zonFechaCreacion: entity.zonFechaCreacion,
    zonEstadoDel: entity.zonEstadoDel,
  );
}
