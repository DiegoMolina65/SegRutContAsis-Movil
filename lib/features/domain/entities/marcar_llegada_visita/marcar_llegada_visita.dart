import 'package:freezed_annotation/freezed_annotation.dart';

part 'marcar_llegada_visita.freezed.dart';
part 'marcar_llegada_visita.g.dart';

@freezed
abstract class MarcarLlegadaVisita with _$MarcarLlegadaVisita {
  const factory MarcarLlegadaVisita({
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
  }) = _MarcarLlegadaVisita;
  factory MarcarLlegadaVisita.fromJson(Map<String, Object?> json) =>
      _$MarcarLlegadaVisitaFromJson(json);
}
