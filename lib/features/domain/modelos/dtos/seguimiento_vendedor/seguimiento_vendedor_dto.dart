import 'package:freezed_annotation/freezed_annotation.dart';

part 'seguimiento_vendedor_dto.freezed.dart';
part 'seguimiento_vendedor_dto.g.dart';

@freezed
abstract class SeguimientoVendedorDto with _$SeguimientoVendedorDto {
  const factory SeguimientoVendedorDto({
    required int segId,
    required int venId,
    required DateTime segFechaCreacion,
    required double segLatitud,
    required double segLongitud,
    required String? vendedorNombre,
  }) = _SeguimientoVendedorDto;
  factory SeguimientoVendedorDto.fromJson(Map<String, Object?> json) =>
      _$SeguimientoVendedorDtoFromJson(json);
}
