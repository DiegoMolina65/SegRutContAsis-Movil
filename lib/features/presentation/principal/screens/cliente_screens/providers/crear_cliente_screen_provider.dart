import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/cliente/cliente.dart';
import 'package:med_geo_asistencia/features/domain/repositories/cliente_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/cliente/repositories/provider_cliente_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/cliente_screens/providers/crear_cliente_screen_state.dart';

final crearClienteScreenProvider = StateNotifierProvider.autoDispose((ref) {
  final clienteRepositorio = ref.read(clienteRepositoryProvider);
  return CrearClienteScreenNotifier(clienteRepositorio: clienteRepositorio);
});

class CrearClienteScreenNotifier
    extends StateNotifier<CrearClienteScreenState> {
  final ClienteRepository clienteRepositorio;

  CrearClienteScreenNotifier({required this.clienteRepositorio})
    : super(CrearClienteScreenState());

  void onCambioClNombreCompleto(String valor) {
    state = state.copyWith(clNombreCompleto: valor);
  }

  void onCambioClCarnetIdentidad(String valor) {
    state = state.copyWith(clCarnetIdentidad: valor);
  }

  void onCambioClNitCliente(String valor) {
    state = state.copyWith(clNitCliente: valor);
  }

  void onCambioClTipoCliente(String valor) {
    state = state.copyWith(clTipoCliente: valor);
  }

  void onCambioClTelefono(String valor) {
    state = state.copyWith(clTelefono: valor);
  }

  void onResetearFormulario() {
    state = CrearClienteScreenState();
  }

  // Crear cliente
  Future<void> onCrearCliente() async {
    try {
      if (state.clNombreCompleto == "") {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Debe ingresar NOMBRE del cliente"),
        );
        return;
      }
      if (state.clNitCliente == "") {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje("Debe ingresar NIT del cliente"),
        );
        return;
      }
      if (state.clCarnetIdentidad == "") {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe ingresar CARNET DE IDENTIDAD del cliente",
          ),
        );
        return;
      }
      if (state.clTelefono == "") {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe ingresar TELEFONO del cliente",
          ),
        );
        return;
      }

      final nuevoCliente = Cliente(
        clId: 0,
        clNombreCompleto: state.clNombreCompleto,
        clCarnetIdentidad: state.clCarnetIdentidad,
        clNitCliente: state.clNitCliente,
        clTipoCliente: state.clTipoCliente,
        clTelefono: state.clTelefono,
      );

      final clienteCreado = await clienteRepositorio.crearCliente(nuevoCliente);

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Cliente creado con éxito: ${clienteCreado.clNombreCompleto}",
        ),
      );

      onResetearFormulario();
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al crear el cliente: $e",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
