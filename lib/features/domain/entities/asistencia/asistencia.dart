import 'package:freezed_annotation/freezed_annotation.dart';

part 'asistencia.freezed.dart';
part 'asistencia.g.dart';

@freezed
abstract class Asistencia with _$Asistencia {
  const factory Asistencia({
    required int asiId,
    required int venId,
    required DateTime asiHoraEntrada,
    required DateTime asiHoraSalida,
    required double asiLatitud,
    required double asiLongitud,
    required String nombreVendedor,
  }) = _Asistencia;
  factory Asistencia.fromJson(Map<String, Object?> json) =>
      _$AsistenciaFromJson(json);
}
