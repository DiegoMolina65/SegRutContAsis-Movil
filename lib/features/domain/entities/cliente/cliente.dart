import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente.freezed.dart';
part 'cliente.g.dart';

@freezed
abstract class Cliente with _$Cliente {
  const factory Cliente({
    required int clId,
    required String clNombreCompleto,
    required String clCarnetIdentidad,
    required String clNitCliente,
    required String? clTipoCliente,
    required String clTelefono,
  }) = _Cliente;
  factory Cliente.fromJson(Map<String, Object?> json) =>
      _$ClienteFromJson(json);
}
