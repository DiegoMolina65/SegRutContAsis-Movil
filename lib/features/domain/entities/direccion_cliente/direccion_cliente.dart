import 'package:freezed_annotation/freezed_annotation.dart';

part 'direccion_cliente.freezed.dart';
part 'direccion_cliente.g.dart';

@freezed
abstract class DireccionCliente with _$DireccionCliente {
  const factory DireccionCliente({
    required int dirClId,
    required DateTime dirClFechaCreacion,
    required int clId,
    required int? zonId,
    required String? dirClNombreSucursal,
    required String dirClDireccion,
    required double dirClLatitud,
    required double dirClLongitud,
    required bool dirClEstadoDel,
  }) = _DireccionCliente;
  factory DireccionCliente.fromJson(Map<String, Object?> json) =>
      _$DireccionClienteFromJson(json);
}
