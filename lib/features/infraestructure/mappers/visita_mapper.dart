import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class VisitaMapper {
  // DTO > Entidad
  static Visita obtenerEntidad(VisitaDto dto) => Visita(
    visId: dto.visId,
    rutId: dto.rutId,
    dirClId: dto.dirClId,
    visFechaCreacion: dto.visFechaCreacion,
    visEstadoDel: dto.visEstadoDel,
    visComentario: dto.visComentario,
    nombreCliente: dto.nombreCliente,
    nombreSucursalCliente: dto.nombreSucursalCliente,
    sucursalLatitud: dto.sucursalLatitud,
    sucursalLongitud: dto.sucursalLongitud,
    nombreZona: dto.nombreZona,
    direccion: dto.direccion,
    nombreVendedor: dto.nombreVendedor,
    nombreRuta: dto.nombreRuta,
    fechaEjecucionRuta: dto.fechaEjecucionRuta,
  );

  // Entidad > DTO
  static VisitaDto obtenerDto(Visita entity) => VisitaDto(
    visId: entity.visId,
    rutId: entity.rutId,
    dirClId: entity.dirClId,
    visFechaCreacion: entity.visFechaCreacion,
    visEstadoDel: entity.visEstadoDel,
    visComentario: entity.visComentario,
    nombreCliente: entity.nombreCliente,
    nombreSucursalCliente: entity.nombreSucursalCliente,
    sucursalLatitud: entity.sucursalLatitud,
    sucursalLongitud: entity.sucursalLongitud,
    nombreZona: entity.nombreZona,
    direccion: entity.direccion,
    nombreVendedor: entity.nombreVendedor,
    nombreRuta: entity.nombreRuta,
    fechaEjecucionRuta: entity.fechaEjecucionRuta,
  );
}
