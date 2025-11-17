import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/card/CustomCardAsistencia.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/lista_asistencia_screen/providers/lista_asistencia_screen_provider.dart'; 
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/export_custom_formulario.dart'; // Para CustomElevatedButton

class ListaAsistenciaScreen extends StatelessWidget {
  static const nombreRuta = '/lista-asistencia-screen';

  const ListaAsistenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: const BarraSuperiorState(titulo: "Registro de Asistencias"),
      vista: const ListaAsistenciaView(),
    );
  }
}

class ListaAsistenciaView extends ConsumerWidget {
  const ListaAsistenciaView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(listaAsistenciaScreenProvider);
    final notificador = ref.read(listaAsistenciaScreenProvider.notifier);

    final isCargando = estado.isCargando;

    ref.listen(
      listaAsistenciaScreenProvider.select((s) => s.mensajeUi),
      (_, next) {
        if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
      },
    );

    if (isCargando && estado.asistencia.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (estado.asistencia.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.schedule, // Icono de reloj/asistencia
              size: 60,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            const Text(
              "No hay registros de asistencia.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Opción para recargar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomElevatedButton(
                etiqueta: "Recargar Asistencias",
                icono: Icons.refresh,
                onClick: notificador.obtenerAsistencias,
                cargando: isCargando,
                expandir: true,
              ),
            ),
          ],
        ),
      );
    }

    // Listado de Asistencias
    return RefreshIndicator(
      onRefresh: notificador.obtenerAsistencias,
      child: ListView.builder(
        itemCount: estado.asistencia.length,
        itemBuilder: (context, index) {
          final asistencia = estado.asistencia[index];
          return CustomCardAsistencia(
            asistencia: asistencia,
          );
        },
      ),
    );
  }
}