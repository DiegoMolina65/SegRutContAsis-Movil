import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/shared/provider/obtener_direccion_cliente_provider.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/providers/crear_visita_screen_provider.dart';
import 'package:med_geo_asistencia/shared/provider/obtener_ruta_provider.dart';

class CrearVisitaScreen extends StatelessWidget {
  static const nombreRuta = '/crear-visita-screen';

  const CrearVisitaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Crear Visita"),
      vista: const CrearVisitaView(),
    );
  }
}

class CrearVisitaView extends ConsumerStatefulWidget {
  const CrearVisitaView({super.key});

  @override
  ConsumerState<CrearVisitaView> createState() => _CrearVisitaViewState();
}

class _CrearVisitaViewState extends ConsumerState<CrearVisitaView> {
  final _formKey = GlobalKey<FormState>();

  void _validarYCrearVisita() {
    if (_formKey.currentState!.validate()) {
      final notificador = ref.read(crearVisitaScreenProvider.notifier);

      notificador.onCrearVisita().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(crearVisitaScreenProvider);
    final notificador = ref.read(crearVisitaScreenProvider.notifier);

    ref.listen(crearVisitaScreenProvider.select((s) => s.mensajeUi), (_, next) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    ref.listen(crearVisitaScreenProvider.select((s) => s.eventoUI), (_, next) {
      if (next != null) {
        DialogoMensajeUI(mensajeUI: next).show(context);
        _formKey.currentState?.reset();
      }
    });

    final rutasAsync = ref.watch(obtenerRutaProvider);
    final direccionesAsync = ref.watch(obtenerDireccionClienteProvider);

    return rutasAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text("Error cargando rutas: $e")),
      data: (rutasData) {
        final List<Ruta> ruta = rutasData["ruta"] as List<Ruta>;

        return direccionesAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, st) =>
              Center(child: Text("Error cargando direcciones: $e")),
          data: (direccionesData) {
            final List<DireccionCliente> direcciones =
                direccionesData["direccioncliente"] as List<DireccionCliente>;

            return Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // --- CAMPO 1: SELECCIONAR RUTA (rutId) ---
                      const CustomText.etiqueta(
                        "Ruta asignada:",
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      FormField<int>(
                        initialValue: estado.rutId == 0 ? null : estado.rutId,
                        validator: (value) => (value == null || value == 0)
                            ? "La ruta es requerida"
                            : null,
                        builder: (FormFieldState<int> field) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSelectCustom<int>(
                                items: ruta.map((e) => e.rutId).toList(),
                                itemLabel: (id) => ruta
                                    .firstWhere((e) => e.rutId == id)
                                    .rutNombre,
                                value: field.value,
                                onChanged: (value) {
                                  field.didChange(value);
                                  notificador.onCambioRutId(value ?? 0);
                                },
                                prefixIcon: const Icon(Icons.route),
                                permitirNinguno: false,
                              ),
                              if (field.hasError)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 8,
                                  ),
                                  child: Text(
                                    field.errorText!,
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 16),

                      // --- CAMPO 2: SELECCIONAR DIRECCIÓN CLIENTE (dirClId) ---
                      const CustomText.etiqueta(
                        "Dirección del cliente:",
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      FormField<int>(
                        initialValue: estado.dirClId == 0
                            ? null
                            : estado.dirClId,
                        validator: (value) => (value == null || value == 0)
                            ? "La dirección del cliente es requerida"
                            : null,
                        builder: (FormFieldState<int> field) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomSelectCustom<int>(
                                items: direcciones
                                    .map((e) => e.dirClId)
                                    .toList(),
                                itemLabel: (id) => direcciones
                                    .firstWhere((e) => e.dirClId == id)
                                    .dirClDireccion,
                                value: field.value,
                                onChanged: (value) {
                                  field.didChange(value);
                                  notificador.onCambioDirClId(value ?? 0);
                                },
                                prefixIcon: const Icon(Icons.location_on),
                                permitirNinguno: false,
                              ),
                              if (field.hasError)
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    top: 8,
                                  ),
                                  child: Text(
                                    field.errorText!,
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 16),

                      // --- CAMPO 3: COMENTARIO (visComentario) ---
                      const CustomText.etiqueta(
                        "Comentario de la visita:",
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      CustomTexFormFiledComentarios(
                        labelText: "Comentario",
                        hintText: "Agrega observaciones sobre la visita...",
                        onChanged: notificador.onCambioVisComentario,
                        minLines: 3,
                        maxLines: 6,
                        maxLength: 1000,
                        helperText: "Información adicional de la visita",
                        requerido: true,
                        mensajeValidacion: "El comentario es requerido",
                      ),
                      const SizedBox(height: 24),

                      // --- BOTÓN DE CREACIÓN ---
                      CustomElevatedButton(
                        etiqueta: "Crear Visita",
                        icono: Icons.check_circle_outline,
                        onClick: _validarYCrearVisita,
                        expandir: true,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
