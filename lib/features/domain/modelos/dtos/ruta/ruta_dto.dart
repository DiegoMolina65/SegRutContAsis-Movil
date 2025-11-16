import 'package:freezed_annotation/freezed_annotation.dart';

part 'ruta_dto.freezed.dart';
part 'ruta_dto.g.dart';

@freezed
abstract class RutaDto with _$RutaDto {
  const factory RutaDto({
    required int rutId,
    required int venId,
    required int supId,
    required String rutNombre,
    required String rutComentario,
    required DateTime rutFechaEjecucion,
    required String nombreVendedor,
    required String? nombreSupervisor,
  }) = _RutaDto;
  factory RutaDto.fromJson(Map<String, Object?> json) =>
      _$RutaDtoFromJson(json);
}
