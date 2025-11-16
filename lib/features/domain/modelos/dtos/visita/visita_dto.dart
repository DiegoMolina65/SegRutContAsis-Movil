import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_dto.freezed.dart';
part 'visita_dto.g.dart';

@freezed
abstract class VisitaDto with _$VisitaDto {
  const factory VisitaDto({
    required int visId,
    required int rutId,
    required int dirClId,
    required DateTime visFechaCreacion,
    required bool visEstadoDel,
    required String visComentario,
    required String nombreCliente,
    required String nombreSucursalCliente,
    required double sucursalLatitud,
    required double sucursalLongitud,
    required String nombreZona,
    required String direccion,
    required String nombreVendedor,
    required String nombreRuta,
    required DateTime fechaEjecucionRuta,
  }) = _VisitaDto;
  factory VisitaDto.fromJson(Map<String, Object?> json) =>
      _$VisitaDtoFromJson(json);
}
