import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class EvidenciaMapper {
  // DTO > Entidad
  static Evidencia obtenerEntidad(EvidenciaDto dto) => Evidencia(
    eviId: dto.eviId,
    eviFechaCreacion: dto.eviFechaCreacion,
    visitaId: dto.visitaId,
    eviTipo: dto.eviTipo,
    eviObservaciones: dto.eviObservaciones,
  );

  // Entidad > DTO
  static EvidenciaDto obtenerDto(Evidencia entity) => EvidenciaDto(
    eviId: entity.eviId,
    eviFechaCreacion: entity.eviFechaCreacion ?? DateTime.now(),
    visitaId: entity.visitaId,
    eviTipo: entity.eviTipo,
    eviObservaciones: entity.eviObservaciones,
  );
}
