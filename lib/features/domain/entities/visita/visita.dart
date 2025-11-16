import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';
part 'visita.g.dart';

@freezed
abstract class Visita with _$Visita {
  const factory Visita({
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
  }) = _Visita;
  factory Visita.fromJson(Map<String, Object?> json) => _$VisitaFromJson(json);
}
