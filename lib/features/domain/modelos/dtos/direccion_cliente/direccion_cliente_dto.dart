import 'package:freezed_annotation/freezed_annotation.dart';

part 'direccion_cliente_dto.freezed.dart';
part 'direccion_cliente_dto.g.dart';

@freezed
abstract class DireccionClienteDto with _$DireccionClienteDto {
  const factory DireccionClienteDto({
    required int dirClId,
    required DateTime dirClFechaCreacion,
    required int clId,
    required int? zonId,
    required String? dirClNombreSucursal,
    required String dirClDireccion,
    required double dirClLatitud,
    required double dirClLongitud,
    required bool dirClEstadoDel,
    required String? nombreCliente,
    required String? nombreZona,
  }) = _DireccionClienteDto;
  factory DireccionClienteDto.fromJson(Map<String, Object?> json) =>
      _$DireccionClienteDtoFromJson(json);
}
