import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class RutaMapper {
  // DTO > Entidad
  static Ruta obtenerEntidad(RutaDto dto) => Ruta(
    rutId: dto.rutId,
    venId: dto.venId,
    supId: dto.supId,
    rutNombre: dto.rutNombre,
    rutComentario: dto.rutComentario,
    rutFechaEjecucion: dto.rutFechaEjecucion,
    nombreVendedor: dto.nombreVendedor,
    nombreSupervisor: dto.nombreSupervisor,
  );

  // Entidad > DTO
  static RutaDto obtenerDto(Ruta entity) => RutaDto(
    rutId: entity.rutId,
    venId: entity.venId,
    supId: entity.supId,
    rutNombre: entity.rutNombre,
    rutComentario: entity.rutComentario,
    rutFechaEjecucion: entity.rutFechaEjecucion,
    nombreVendedor: entity.nombreVendedor,
    nombreSupervisor: entity.nombreSupervisor,
  );
}
