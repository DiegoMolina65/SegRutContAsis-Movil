import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/card/CustomCardVisita.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/crear_visita_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/lista_visita_screen/providers/lista_visita_screen_provider.dart';

class ListaVisitaScreen extends StatelessWidget {
  static const nombreRuta = '/lista-visita-screen';

  const ListaVisitaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: const BarraSuperiorState(titulo: "Mis Visitas"),
      vista: const ListaVisitaView(),
    );
  }
}

class ListaVisitaView extends ConsumerWidget {
  const ListaVisitaView({super.key});

  void _mostrarConfirmacionEliminar(
    BuildContext context,
    WidgetRef ref,
    int visId,
  ) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Confirmar Eliminación"),
        content: Text(
          "¿Estás seguro de que deseas desactivar la Visita $visId?",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              ref
                  .read(listaVisitaScreenProvider.notifier)
                  .onEliminarVisita(visId);
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
    final estado = ref.watch(listaVisitaScreenProvider);
    final notificador = ref.read(listaVisitaScreenProvider.notifier);

    final isCargando = estado.isCargando;

    // Listener para errores
    ref.listen(listaVisitaScreenProvider.select((s) => s.mensajeUi), (_, next) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    // Listener para eventos (Navegación o Mensajes de éxito)
    ref.listen(listaVisitaScreenProvider.select((s) => s.eventoUI), (
      _,
      next,
    ) async {
      if (next != null) {
        DialogoMensajeUI(mensajeUI: next).show(context);

        if (next.datosExtras is int) {
          final visId = next.datosExtras as int;
          if (visId > 0) {
            await context.push('${CrearVisitaScreen.nombreRuta}/$visId');
            notificador.obtenerVisitas();
          }
        }
      }
    });

    if (isCargando && estado.visitas.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (estado.visitas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.route_outlined, size: 60, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              "No tienes visitas asignadas.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomElevatedButton(
                etiqueta: "Recargar Visitas",
                icono: Icons.refresh,
                onClick: notificador.obtenerVisitas,
                cargando: isCargando,
                expandir: true,
              ),
            ),
          ],
        ),
      );
    }

    // Listado de visitas
    return RefreshIndicator(
      onRefresh: notificador.obtenerVisitas,
      child: ListView.builder(
        itemCount: estado.visitas.length,
        itemBuilder: (context, index) {
          final visita = estado.visitas[index];
          return CustomCardVisita(
            visita: visita,
            onTap: () {
              // Lógica al presionar la tarjeta
            },
            onEdit: () => notificador.onEditarVisita(visita.visId),
            onDelete: () =>
                _mostrarConfirmacionEliminar(context, ref, visita.visId),
          );
        },
      ),
    );
  }
}
