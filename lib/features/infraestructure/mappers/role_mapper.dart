import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class RoleMapper {
  // DTO > Entidad
  static Role obtenerEntidad(RoleDto dto) => Role(
    rolId: dto.rolId,
    rolNombre: dto.rolNombre,
    rolDescripcion: dto.rolDescripcion
  );
}
