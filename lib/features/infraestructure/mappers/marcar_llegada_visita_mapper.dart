import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';

class MarcarLlegadaVisitaMapper {
  // DTO > Entidad
  static MarcarLlegadaVisita obtenerEntidad(MarcarLlegadaVisitaDto dto) =>
      MarcarLlegadaVisita(
        mlvId: dto.mlvId,
        visId: dto.visId,
        mlvHora: dto.mlvHora,
        mlvLatitud: dto.mlvLatitud,
        mlvLongitud: dto.mlvLongitud,
        mlvEstadoDel: dto.mlvEstadoDel,
        mlvFechaCreacion: dto.mlvFechaCreacion,
        nombreCliente: dto.nombreCliente,
        nombreSucursalCliente: dto.nombreSucursalCliente,
        sucursalLatitud: dto.sucursalLatitud,
        sucursalLongitud: dto.sucursalLongitud,
        nombreVendedor: dto.nombreVendedor,
        usuarioLogVendedor: dto.usuarioLogVendedor,
        telefonoVendedor: dto.telefonoVendedor,
      );

  // Entidad > DTO
  static MarcarLlegadaVisitaDto obtenerDto(MarcarLlegadaVisita entity) =>
      MarcarLlegadaVisitaDto(
        mlvId: entity.mlvId,
        visId: entity.visId,
        mlvHora: entity.mlvHora,
        mlvLatitud: entity.mlvLatitud,
        mlvLongitud: entity.mlvLongitud,
        mlvEstadoDel: entity.mlvEstadoDel,
        mlvFechaCreacion: entity.mlvFechaCreacion,
        nombreCliente: entity.nombreCliente,
        nombreSucursalCliente: entity.nombreSucursalCliente,
        sucursalLatitud: entity.sucursalLatitud,
        sucursalLongitud: entity.sucursalLongitud,
        nombreVendedor: entity.nombreVendedor,
        usuarioLogVendedor: entity.usuarioLogVendedor,
        telefonoVendedor: entity.telefonoVendedor,
      );
}
