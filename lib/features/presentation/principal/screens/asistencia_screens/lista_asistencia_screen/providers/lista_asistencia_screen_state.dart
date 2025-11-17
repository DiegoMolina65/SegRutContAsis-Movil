import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'lista_asistencia_screen_state.freezed.dart';

@freezed
abstract class ListaAsistenciaScreenState with _$ListaAsistenciaScreenState {
  const ListaAsistenciaScreenState._();

  const factory ListaAsistenciaScreenState({
    @Default(true) bool isCargando,
    @Default([]) List<Asistencia> asistencia,
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,
  }) = _ListaAsistenciaScreenState;
}