import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class AsistenciaMapper {
  // DTO > Entidad 
  static Asistencia obtenerEntidad(AsistenciaDto dto) => Asistencia(
        asiId: dto.asiId,
        venId: dto.venId,
        asiHoraEntrada: dto.asiHoraEntrada,
        asiHoraSalida: dto.asiHoraSalida,
        asiLatitud: dto.asiLatitud,
        asiLongitud: dto.asiLongitud,
        nombreVendedor: dto.nombreVendedor,
      );

  // Entidad > DTO 
  static AsistenciaDto obtenerDto(Asistencia entity) => AsistenciaDto(
        asiId: entity.asiId,
        venId: entity.venId,
        asiHoraEntrada: entity.asiHoraEntrada,
        asiHoraSalida: entity.asiHoraSalida,
        asiLatitud: entity.asiLatitud,
        asiLongitud: entity.asiLongitud,
        nombreVendedor: entity.nombreVendedor,
      );
}
