import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/card/CustomCardRuta.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/lista_ruta_screen/providers/lista_ruta_screen_provider.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/crear_ruta_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/visita_por_ruta_screen/visita_por_ruta_screen.dart';

class ListaRutaScreen extends StatelessWidget {
  static const nombreRuta = '/lista-ruta-screen';

  const ListaRutaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: const BarraSuperiorState(titulo: "Mis Rutas"),
      vista: const ListaRutaView(),
    );
  }
}

class ListaRutaView extends ConsumerWidget {
  const ListaRutaView({super.key});

  void _mostrarConfirmacionEliminar(
    BuildContext context,
    WidgetRef ref,
    int rutId,
  ) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Confirmar Eliminación"),
        content: Text("¿Estás seguro de que deseas desactivar la Ruta $rutId?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              ref.read(listaRutaScreenProvider.notifier).onEliminarRuta(rutId);
            },
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text("Eliminar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(listaRutaScreenProvider);
    final notificador = ref.read(listaRutaScreenProvider.notifier);

    final isCargando = estado.isCargando;

    // Listener para errores
    ref.listen(listaRutaScreenProvider.select((s) => s.mensajeUi), (_, next) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    // Listener para eventos (Navegación o Mensajes de éxito)
    ref.listen(listaRutaScreenProvider.select((s) => s.eventoUI), (
      _,
      next,
    ) async {
      if (next != null) {
        DialogoMensajeUI(mensajeUI: next).show(context);

        if (next.datosExtras is int) {
          final rutId = next.datosExtras as int;

          // Lógica de Edición
          if (rutId > 0) {
            await Navigator.of(
              context,
            ).pushNamed(CrearRutaScreen.nombreRuta, arguments: rutId);
            notificador.obtenerRutas();
          }
          // Lógica de Visitas
          else if (next.titulo == "Navegar a lista de visitas") {
            if (rutId > 0) {
              // Usamos context.push para GoRouter
              context.push('${VisitaPorRutaScreen.nombreRuta}/$rutId');
            }
          }
        }
      }
    });

    if (isCargando && estado.rutas.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (estado.rutas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.route_outlined, size: 60, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              "No tienes rutas asignadas.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomElevatedButton(
                etiqueta: "Recargar Rutas",
                icono: Icons.refresh,
                onClick: notificador.obtenerRutas,
                cargando: isCargando,
                expandir: true,
              ),
            ),
          ],
        ),
      );
    }

    // Listado de Rutas
    return RefreshIndicator(
      onRefresh: notificador.obtenerRutas,
      child: ListView.builder(
        itemCount: estado.rutas.length,
        itemBuilder: (context, index) {
          final ruta = estado.rutas[index];
          return CustomCardRuta(
            ruta: ruta,
            onTap: () {
              notificador.onVerVisitas(ruta.rutId);
            },
            onEdit: () => notificador.onEditarRuta(ruta.rutId),
            onDelete: () =>
                _mostrarConfirmacionEliminar(context, ref, ruta.rutId),
          );
        },
      ),
    );
  }
}
