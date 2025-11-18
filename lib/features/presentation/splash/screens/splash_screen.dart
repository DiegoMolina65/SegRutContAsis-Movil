import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/custom_filled_button.dart';
import 'package:med_geo_asistencia/features/presentation/core/eventos_ui/eventos_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/splash/providers/splash_screen_provider.dart';

class SplashScreen extends StatelessWidget {
  static const nombreRuta = '/splash-screen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashView());
  }
}

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    ref.read(splashScreenProvider.notifier).cargarDatosIniciales();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      splashScreenProvider.select((estadoVista) => estadoVista.mensajeUi),
      (previous, next) async {
        if (next == null) return;

        /// Mostrar mensaje UI
        DialogoMensajeUI(mensajeUI: next).show(context);
      },
    );
    ref.listen(
      splashScreenProvider.select((estadoVista) => estadoVista.eventoUI),
          (previous, next) async {
        if (next == null) return;
        if (next is EventoUIRedirigirPantalla) {
          context.go(next.ruta);
          return;
        }
      },
    );
    final estadoVista = ref.watch(splashScreenProvider);
    final notificadorVista = ref.read(splashScreenProvider.notifier);

    if (estadoVista.mensajeCargando.isEmpty && estadoVista.mensajeUi is ErrorMensajeUI) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomFilledButton(
              etiqueta: "Reintentar",
              onClick: notificadorVista.cargarDatosIniciales,
            ),
          ],
        ),
      );
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          Text(estadoVista.mensajeCargando),
        ],
      ),
    );
  }
}
