import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'marcar_llegada_visita_dto.freezed.dart';
part 'marcar_llegada_visita_dto.g.dart';

@freezed
abstract class MarcarLlegadaVisitaDto with _$MarcarLlegadaVisitaDto {
  const factory MarcarLlegadaVisitaDto({
    required int mlvId,
    required int visId,
    required String? mlvHora,
    required double mlvLatitud,
    required double mlvLongitud,
    required bool mlvEstadoDel,
    required String mlvFechaCreacion,
    required String? nombreCliente,
    required String? nombreSucursalCliente,
    required double? sucursalLatitud,
    required double? sucursalLongitud,
    required String? nombreVendedor,
    required String? usuarioLogVendedor,
    required String? telefonoVendedor,
  }) = _MarcarLlegadaVisitaDto;
  factory MarcarLlegadaVisitaDto.fromJson(Map<String, Object?> json) =>
      _$MarcarLlegadaVisitaDtoFromJson(json);
}
