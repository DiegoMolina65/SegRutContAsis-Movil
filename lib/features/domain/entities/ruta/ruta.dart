import 'package:freezed_annotation/freezed_annotation.dart';

part 'ruta.freezed.dart';
part 'ruta.g.dart';

@freezed
abstract class Ruta with _$Ruta {
  const factory Ruta({
    required int rutId,
    required int venId,
    required int supId,
    required String rutNombre,
    required String rutComentario,
    required DateTime rutFechaEjecucion,
    required String? nombreVendedor,
    required String? nombreSupervisor,
  }) = _Ruta;
  factory Ruta.fromJson(Map<String, Object?> json) => _$RutaFromJson(json);
}
