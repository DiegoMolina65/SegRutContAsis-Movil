import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/cliente_screens/providers/crear_cliente_screen_provider.dart';

class CrearClienteScreen extends StatelessWidget {
  static const nombreRuta = '/crear-cliente-screen';

  const CrearClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Crear Cliente"),
      vista: const CrearClienteView(),
    );
  }
}

class CrearClienteView extends ConsumerStatefulWidget {
  const CrearClienteView({super.key});

  @override
  ConsumerState<CrearClienteView> createState() => _CrearClienteViewState();
}

class _CrearClienteViewState extends ConsumerState<CrearClienteView> {
  final _formKey = GlobalKey<FormState>();

  void _validarYCrearCliente() {
    if (_formKey.currentState!.validate()) {
      final notificador = ref.read(crearClienteScreenProvider.notifier);
      notificador.onCrearCliente().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(crearClienteScreenProvider.select((s) => s.mensajeUi), (
      _,
      next,
    ) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    ref.listen(crearClienteScreenProvider.select((s) => s.eventoUI), (_, next) {
      if (next != null) {
        DialogoMensajeUI(mensajeUI: next).show(context);
        _formKey.currentState?.reset();
      }
    });

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Nombre completo
              const CustomText.etiqueta(
                "Nombre completo:",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: Juan Pérez",
                onChanged: (val) => ref
                    .read(crearClienteScreenProvider.notifier)
                    .onCambioClNombreCompleto(val),
                validator: (val) => (val == null || val.isEmpty)
                    ? "El nombre es requerido"
                    : null,
              ),
              const SizedBox(height: 16),

              // NIT
              const CustomText.etiqueta("NIT:", color: Colors.black),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: 123456789",
                onChanged: (val) => ref
                    .read(crearClienteScreenProvider.notifier)
                    .onCambioClNitCliente(val),
                validator: (val) =>
                    (val == null || val.isEmpty) ? "El NIT es requerido" : null,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),

              // Carnet de identidad
              const CustomText.etiqueta(
                "Carnet de identidad:",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: 87654321",
                onChanged: (val) => ref
                    .read(crearClienteScreenProvider.notifier)
                    .onCambioClCarnetIdentidad(val),
                validator: (val) =>
                    (val == null || val.isEmpty) ? "El CI es requerido" : null,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),

              // Tipo de cliente
              const CustomText.etiqueta(
                "Tipo de cliente (Opcional):",
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: Mayorista, Minorista",
                onChanged: (val) => ref
                    .read(crearClienteScreenProvider.notifier)
                    .onCambioClTipoCliente(val),
              ),
              const SizedBox(height: 16),

              // Teléfono
              const CustomText.etiqueta("Teléfono:", color: Colors.black),
              const SizedBox(height: 8),
              CustomTextFormField(
                hintText: "Ej: 71234567",
                onChanged: (val) => ref
                    .read(crearClienteScreenProvider.notifier)
                    .onCambioClTelefono(val),
                validator: (val) => (val == null || val.isEmpty)
                    ? "El teléfono es requerido"
                    : null,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 24),

              // Botón crear cliente
              CustomElevatedButton(
                etiqueta: "Crear Cliente",
                icono: Icons.add,
                expandir: true,
                onClick: _validarYCrearCliente,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
