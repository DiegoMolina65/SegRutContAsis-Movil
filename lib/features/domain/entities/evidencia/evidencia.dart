import 'package:freezed_annotation/freezed_annotation.dart';

part 'evidencia.freezed.dart';
part 'evidencia.g.dart';

@freezed
abstract class Evidencia with _$Evidencia {
  const factory Evidencia({
    required int eviId,
    required DateTime eviFechaCreacion,
    required int visitaId,
    required String? eviTipo,
    required String? eviObservaciones,
  }) = _Evidencia;
  factory Evidencia.fromJson(Map<String, Object?> json) =>
      _$EvidenciaFromJson(json);
}
