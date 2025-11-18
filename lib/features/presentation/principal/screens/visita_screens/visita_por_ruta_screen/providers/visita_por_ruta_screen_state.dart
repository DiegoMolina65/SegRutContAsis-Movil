import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'visita_por_ruta_screen_state.freezed.dart';

@freezed
abstract class VisitaPorRutaScreenState with _$VisitaPorRutaScreenState {
  const VisitaPorRutaScreenState._();

  const factory VisitaPorRutaScreenState({
    @Default(true) bool isCargando,
    @Default([]) List<Visita> visitas,
    MensajeUI? mensajeUi,
  }) = _VisitaPorRutaScreenState;
}
