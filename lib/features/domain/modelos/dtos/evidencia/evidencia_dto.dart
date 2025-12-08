
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evidencia_dto.freezed.dart';
part 'evidencia_dto.g.dart';


@freezed
abstract class EvidenciaDto with _$EvidenciaDto {
  const factory EvidenciaDto({
    required int eviId,
    required DateTime eviFechaCreacion,
    required int visitaId,
    required String? eviTipo,
    required String? eviObservaciones,
    required String? eviArchivoUrl,
  }) = _EvidenciaDto;
  factory EvidenciaDto.fromJson(Map<String, Object?> json) => _$EvidenciaDtoFromJson(json);
}