import 'package:freezed_annotation/freezed_annotation.dart';

part 'asistencia_dto.freezed.dart';
part 'asistencia_dto.g.dart';

@freezed
abstract class AsistenciaDto with _$AsistenciaDto {
  const factory AsistenciaDto({
    required int asiId,
    required int venId,
    required DateTime asiHoraEntrada,
    required DateTime? asiHoraSalida,
    required double asiLatitud,
    required double asiLongitud,
    required String? nombreVendedor,
  }) = _AsistenciaDto;
  factory AsistenciaDto.fromJson(Map<String, Object?> json) =>
      _$AsistenciaDtoFromJson(json);
}
