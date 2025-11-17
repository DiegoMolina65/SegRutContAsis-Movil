import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/shared/provider/obtener_supervisor_vendedor_provider.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/providers/crear_ruta_screen_provider.dart';

class CrearRutaScreen extends StatelessWidget {
  static const nombreRuta = '/crear-ruta-screen';

  const CrearRutaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Crear Ruta"),

      vista: const CrearRutaView(),
    );
  }
}

class CrearRutaView extends ConsumerStatefulWidget {
  const CrearRutaView({super.key});

  @override
  ConsumerState<CrearRutaView> createState() => _CrearRutaViewState();
}

class _CrearRutaViewState extends ConsumerState<CrearRutaView> {
  final _formKey = GlobalKey<FormState>();

  static const List<String> _diasSemana = [
    'Lunes',

    'Martes',

    'Miércoles',

    'Jueves',

    'Viernes',

    'Sábado',

    'Domingo',
  ];

  void _validarYCrearRuta() {
    if (_formKey.currentState!.validate()) {
      final notificador = ref.read(crearRutaScreenProvider.notifier);

      notificador.onCrearRuta().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(crearRutaScreenProvider);

    final notificador = ref.read(crearRutaScreenProvider.notifier);

    ref.listen(crearRutaScreenProvider.select((s) => s.mensajeUi), (_, next) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    ref.listen(crearRutaScreenProvider.select((s) => s.eventoUI), (_, next) {
      if (next != null) {
        DialogoMensajeUI(mensajeUI: next).show(context);

        _formKey.currentState?.reset();
      }
    });

    final dataAsync = ref.watch(obtenerSupervisorVendedorProvider);

    return dataAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),

      error: (_, __) => const Center(child: Text("Error cargando datos")),

      data: (data) {
        final supervisores = data["supervisores"] as List<Usuario>;

        final vendedores = data["vendedores"] as List<Usuario>;

        if (estado.venId == 0 && vendedores.isNotEmpty) {
          Future.microtask(() {
            notificador.onCambioVenId(vendedores.first.usrId);
          });
        }

        return Form(
          key: _formKey,

          autovalidateMode: AutovalidateMode.onUserInteraction,

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  // Etiqueta Supervisor
                  const CustomText.etiqueta(
                    "Selecciona un supervisor:",

                    color: Colors.black,
                  ),

                  const SizedBox(height: 8),

                  // SelectCustom para Supervisor con FormField
                  FormField<int>(
                    initialValue: estado.supId == 0 ? null : estado.supId,

                    validator: (value) {
                      if (value == null || value == 0) {
                        return "El supervisor es requerido";
                      }

                      return null;
                    },

                    builder: (FormFieldState<int> field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          CustomSelectCustom<int>(
                            items: supervisores
                                .map((e) => e.supervisorId ?? 0)
                                .toList(),

                            itemLabel: (id) => supervisores
                                .firstWhere((e) => e.supervisorId == id)
                                .usrNombreCompleto,

                            value: field.value,

                            onChanged: (value) {
                              field.didChange(value);

                              notificador.onCambioSupId(value ?? 0);
                            },

                            prefixIcon: const Icon(Icons.supervisor_account),

                            permitirNinguno: true,

                            textoNinguno: 'Sin supervisor',
                          ),

                          if (field.hasError)
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 8),

                              child: Text(
                                field.errorText!,

                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,

                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 16),

                  // Etiqueta Vendedor
                  const CustomText.etiqueta(
                    "Selecciona un vendedor:",

                    color: Colors.black,
                  ),

                  const SizedBox(height: 8),

                  // SelectCustom para Vendedor con FormField
                  FormField<int>(
                    initialValue: estado.venId == 0 ? null : estado.venId,

                    validator: (value) {
                      if (value == null || value == 0) {
                        return "El vendedor es requerido";
                      }

                      return null;
                    },

                    builder: (FormFieldState<int> field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          CustomSelectCustom<int>(
                            items: vendedores
                                .map((e) => e.vendedorId ?? 0)
                                .toList(),

                            itemLabel: (id) => vendedores
                                .firstWhere((e) => e.vendedorId == id)
                                .usrNombreCompleto,

                            value: field.value,

                            onChanged: (value) {
                              field.didChange(value);

                              notificador.onCambioVenId(value ?? 0);
                            },

                            prefixIcon: const Icon(Icons.person),

                            permitirNinguno: false,
                          ),

                          if (field.hasError)
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 8),

                              child: Text(
                                field.errorText!,

                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,

                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 16),

                  // Etiqueta Nombre de la ruta
                  const CustomText.etiqueta(
                    "Nombre de la ruta:",

                    color: Colors.black,
                  ),

                  const SizedBox(height: 8),

                  // SelectCustom para Día de la semana con FormField
                  FormField<String>(
                    initialValue: estado.rutNombre.isEmpty
                        ? null
                        : estado.rutNombre,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "El nombre de la ruta es requerido";
                      }

                      return null;
                    },

                    builder: (FormFieldState<String> field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          CustomSelectCustom<String>(
                            items: _diasSemana,

                            itemLabel: (dia) => dia,

                            value: field.value,

                            onChanged: (value) {
                              field.didChange(value);

                              notificador.onCambioRutNombre(value ?? '');
                            },

                            prefixIcon: const Icon(
                              Icons.calendar_today_outlined,
                            ),

                            permitirNinguno: false,

                            hintTextBuscador: 'Buscar día...',
                          ),

                          if (field.hasError)
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 8),

                              child: Text(
                                field.errorText!,

                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,

                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 16),

                  // Etiqueta Comentario
                  const CustomText.etiqueta("Comentario:", color: Colors.black),

                  const SizedBox(height: 8),

                  // CampoComentarios para comentario
                  CustomTexFormFiledComentarios(
                    labelText: "Comentario",

                    hintText: "Agrega observaciones sobre esta ruta...",

                    onChanged: notificador.onCambioRutComentario,

                    minLines: 3,

                    maxLines: 6,

                    maxLength: 1000,

                    helperText: "Información adicional",

                    requerido: true,

                    mensajeValidacion: "El comentario es requerido",
                  ),

                  const SizedBox(height: 16),

                  // Etiqueta Fecha de ejecución
                  const CustomText.etiqueta(
                    "Fecha de ejecución:",

                    color: Colors.black,
                  ),

                  const SizedBox(height: 8),

                  // CampoFecha para fecha de ejecución con FormField
                  FormField<DateTime>(
                    initialValue: estado.rutFechaEjecucion,

                    validator: (value) {
                      if (value == null) {
                        return "La fecha de ejecución es requerida";
                      }

                      return null;
                    },

                    builder: (FormFieldState<DateTime> field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          CustomCampoFecha(
                            value: field.value,

                            onChanged: (fecha) {
                              if (fecha != null) {
                                field.didChange(fecha);

                                notificador.onCambioRutFechaEjecucion(fecha);
                              }
                            },

                            permitirFechasPasadas: false,

                            prefixIcon: const Icon(Icons.calendar_today),

                            helperText: "Solo se permiten fechas futuras",
                          ),

                          if (field.hasError)
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 8),

                              child: Text(
                                field.errorText!,

                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,

                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 24),

                  // BotonElevado para crear ruta
                  CustomElevatedButton(
                    etiqueta: "Crear Ruta",

                    icono: Icons.add,

                    onClick: _validarYCrearRuta,

                    expandir: true,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
