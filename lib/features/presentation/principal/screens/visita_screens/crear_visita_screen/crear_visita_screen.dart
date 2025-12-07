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
import 'package:intl/intl.dart';

class CrearVisitaScreen extends StatelessWidget {
  static const nombreRuta = '/crear-visita-screen';

  final int? visId;

  const CrearVisitaScreen({super.key, this.visId});

  @override
  Widget build(BuildContext context) {
    final String titulo = visId != null && visId! > 0
        ? "Editar Visita"
        : "Crear Visita";

    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: titulo),
      vista: CrearVisitaView(visId: visId),
    );
  }
}

class CrearVisitaView extends ConsumerStatefulWidget {
  final int? visId;
  const CrearVisitaView({super.key, this.visId});

  @override
  ConsumerState<CrearVisitaView> createState() => _CrearVisitaViewState();
}

class _CrearVisitaViewState extends ConsumerState<CrearVisitaView> {
  final _formKey = GlobalKey<FormState>();

  Key _formWidgetKey = UniqueKey();

  void _validarYCrearVisita() {
    if (_formKey.currentState!.validate()) {
      final notificador = ref.read(
        crearVisitaScreenProvider(widget.visId).notifier,
      );

      notificador.onGuardarVisita().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(crearVisitaScreenProvider(widget.visId));
    final notificador = ref.read(
      crearVisitaScreenProvider(widget.visId).notifier,
    );

    final bool esEdicion = estado.visId > 0;

    ref.listen(
      crearVisitaScreenProvider(widget.visId).select((s) => s.mensajeUi),
      (_, next) {
        if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
      },
    );

    ref.listen(
      crearVisitaScreenProvider(widget.visId).select((s) => s.eventoUI),
      (_, next) {
        if (next != null) {
          DialogoMensajeUI(mensajeUI: next).show(context);
          if (!esEdicion) {
            notificador.onResetearFormulario();
            setState(() {
              _formWidgetKey = UniqueKey();
            });
          }
        }
      },
    );

    if (estado.isCargando && esEdicion) {
      return const Center(child: CircularProgressIndicator());
    }

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
              child: KeyedSubtree(
                key: _formWidgetKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // SELECCIONAR
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
                                  itemLabel: (id) {
                                    final item = ruta.firstWhere(
                                      (e) => e.rutId == id,
                                    );
                                    final fecha = DateFormat(
                                      'dd/MM/yyyy',
                                    ).format(item.rutFechaEjecucion);
                                    return "${item.rutNombre} - $fecha";
                                  },
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

                        // SELECCIONAR DIRECCIÓN CLIENTE
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
                                  itemLabel: (id) {
                                    final direccion = direcciones.firstWhere(
                                      (e) => e.dirClId == id,
                                    );
                                    return '${direccion.dirClNombreSucursal} - ${direccion.dirClDireccion} - ${direccion.nombreCliente}';
                                  },
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

                        // COMENTARIO
                        const CustomText.etiqueta(
                          "Comentario de la visita:",
                          color: Colors.black,
                        ),
                        const SizedBox(height: 8),
                        CustomTexFormFiledComentarios(
                          initialValue: estado.visComentario,
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

                        // BOTÓN DE CREACIÓN / EDICIÓN
                        CustomElevatedButton(
                          etiqueta: esEdicion
                              ? "Guardar Cambios"
                              : "Crear Visita",
                          icono: esEdicion
                              ? Icons.save
                              : Icons.check_circle_outline,
                          onClick: _validarYCrearVisita,
                          expandir: true,
                        ),
                      ],
                    ),
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
