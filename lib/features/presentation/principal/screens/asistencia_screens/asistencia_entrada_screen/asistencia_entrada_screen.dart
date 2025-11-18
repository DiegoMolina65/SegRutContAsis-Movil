import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/lista_ruta_screen/lista_ruta_screen.dart';
import 'package:med_geo_asistencia/shared/provider/obtener_supervisor_vendedor_provider.dart';

import 'providers/asistencia_entrada_screen_provider.dart';

class AsistenciaEntradaScreen extends StatelessWidget {
  static const nombreRuta = '/asistencia-entrada-screen';

  const AsistenciaEntradaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Registrar Entrada"),
      vista: const AsistenciaEntradaView(),
    );
  }
}

class AsistenciaEntradaView extends ConsumerStatefulWidget {
  const AsistenciaEntradaView({super.key});

  @override
  ConsumerState<AsistenciaEntradaView> createState() =>
      _AsistenciaEntradaViewState();
}

class _AsistenciaEntradaViewState extends ConsumerState<AsistenciaEntradaView> {
  final _formKey = GlobalKey<FormState>();

  // Definimos la función de navegación
  void _navegarAListaRuta() {
    context.go(ListaRutaScreen.nombreRuta);
  }

  void _validarYCrearAsistencia() {
    if (_formKey.currentState!.validate()) {
      final notificador = ref.read(
        crearAsistenciaEntradaScreenProvider(_navegarAListaRuta).notifier,
      );
      notificador.onCrearAsistenciaEntrada().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(
      crearAsistenciaEntradaScreenProvider(_navegarAListaRuta),
    );
    final notificador = ref.read(
      crearAsistenciaEntradaScreenProvider(_navegarAListaRuta).notifier,
    );

    ref.listen(
      crearAsistenciaEntradaScreenProvider(
        _navegarAListaRuta,
      ).select((s) => s.mensajeUi),
      (_, next) {
        if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
      },
    );

    ref.listen(
      crearAsistenciaEntradaScreenProvider(
        _navegarAListaRuta,
      ).select((s) => s.eventoUI),
      (_, next) {
        if (next != null) {
          DialogoMensajeUI(mensajeUI: next).show(context);
          _formKey.currentState?.reset();
        }
      },
    );

    // Provider que trae supervisores y vendedores
    final dataAsync = ref.watch(obtenerSupervisorVendedorProvider);

    return dataAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),

      error: (_, __) => const Center(child: Text("Error cargando datos")),

      data: (data) {
        final vendedores = data["vendedores"] as List<Usuario>;

        // Asignar vendedor por defecto si no hay
        if (estado.venId == 0 && vendedores.isNotEmpty) {
          Future.microtask(() {
            notificador.onCambioVenId(vendedores.first.vendedorId ?? 0);
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
                    builder: (field) {
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

                  // Botón para registrar la asistencia
                  CustomElevatedButton(
                    etiqueta: "Registrar Entrada",
                    icono: Icons.login,
                    onClick: _validarYCrearAsistencia,
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
