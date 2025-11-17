import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

part 'crear_cliente_screen_state.freezed.dart';

@freezed
abstract class CrearClienteScreenState with _$CrearClienteScreenState {
  const CrearClienteScreenState._();

  const factory CrearClienteScreenState({
    MensajeUI? mensajeUi,
    MensajeUI? eventoUI,

    /// Campos del formulario
    @Default("") String clNombreCompleto,
    @Default("") String clCarnetIdentidad,
    @Default("") String clNitCliente,
    @Default("") String clTipoCliente,
    @Default("") String clTelefono,

    @Default(false) bool isCargando,
  }) = _CrearClienteScreenState;
}
