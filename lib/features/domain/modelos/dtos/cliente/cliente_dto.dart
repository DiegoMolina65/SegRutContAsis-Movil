import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_dto.freezed.dart';
part 'cliente_dto.g.dart';

@freezed
abstract class ClienteDto with _$ClienteDto {
  const factory ClienteDto({
    required int clId,
    required String clNombreCompleto,
    required String clCarnetIdentidad,
    required String clNitCliente,
    required String? clTipoCliente,
    required String clTelefono,
  }) = _ClienteDto;
  factory ClienteDto.fromJson(Map<String, Object?> json) =>
      _$ClienteDtoFromJson(json);
}
