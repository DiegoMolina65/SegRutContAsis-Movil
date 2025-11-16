import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_estatus.dart';

part 'autenticacion_state.freezed.dart';

@freezed
abstract class AutenticacionState with _$AutenticacionState {
  const AutenticacionState._();

  const factory AutenticacionState({
    @Default(AutenticacionEstatus.verificando) AutenticacionEstatus autenticacionEstatus,
  }) = _AutenticacionState;
}
