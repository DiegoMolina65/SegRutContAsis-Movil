import 'package:freezed_annotation/freezed_annotation.dart';

part 'evidencia.freezed.dart';
part 'evidencia.g.dart';

@freezed
abstract class Evidencia with _$Evidencia {
  const factory Evidencia({
    required int eviId,
    required int visitaId,
    required String? eviTipo,
    required String? eviObservaciones,
    @JsonKey(ignore: true) DateTime? eviFechaCreacion,
  }) = _Evidencia;

  /// Constructor por nombre de atributos para integrar a la tabla drift
  factory Evidencia.desdeBaseDeDatos({
    required int eviId,
    required int visitaId,
    required String? eviTipo,
    required String? eviObservaciones,
    required DateTime? eviFechaCreacion,
  }) {
    return Evidencia(
      eviId: eviId,
      visitaId: visitaId,
      eviTipo: eviTipo,
      eviObservaciones: eviObservaciones,
      eviFechaCreacion: DateTime.now(),
    );
  }

  factory Evidencia.fromJson(Map<String, Object?> json) =>
      _$EvidenciaFromJson(json);
}
