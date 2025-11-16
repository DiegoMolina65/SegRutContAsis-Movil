import 'package:freezed_annotation/freezed_annotation.dart';

part 'seguimiento_vendedor.freezed.dart';
part 'seguimiento_vendedor.g.dart';

@freezed
abstract class SeguimientoVendedor with _$SeguimientoVendedor {
  const factory SeguimientoVendedor({
    required int segId,
    required int venId,
    required DateTime segFechaCreacion,
    required double segLatitud,
    required double segLongitud,
    required String? vendedorNombre,
  }) = _SeguimientoVendedor;
  factory SeguimientoVendedor.fromJson(Map<String, Object?> json) =>
      _$SeguimientoVendedorFromJson(json);
}
