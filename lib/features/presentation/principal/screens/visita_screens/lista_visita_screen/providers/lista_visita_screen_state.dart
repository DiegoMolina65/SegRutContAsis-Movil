import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'lista_visita_screen_state.freezed.dart';

@freezed
abstract class ListaVisitaScreenState with _$ListaVisitaScreenState {
  const ListaVisitaScreenState._();

  const factory ListaVisitaScreenState({
    @Default(true) bool isCargando,
    @Default([]) List<Visita> visitas,
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,
  }) = _ListaVisitaScreenState;
}
