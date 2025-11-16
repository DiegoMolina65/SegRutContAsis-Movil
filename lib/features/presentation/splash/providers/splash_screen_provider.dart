import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/eventos_ui/eventos_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/login/screens/login_screen.dart';
import 'package:med_geo_asistencia/features/presentation/splash/providers/splash_screen_state.dart';

final splashScreenProvider =
    StateNotifierProvider.autoDispose<SplashScreenNotifier, SplashScreenState>((
      ref,
    ) {
      return SplashScreenNotifier();
    });

class SplashScreenNotifier extends StateNotifier<SplashScreenState> {
  SplashScreenNotifier() : super(const SplashScreenState());

  Future<void> cargarDatosIniciales() async {
    try {
      await Future.delayed(Duration.zero);
      state = state.copyWith(mensajeCargando: "Cargando, espere por favor...");
      await Future.delayed(Duration(seconds: 3));
      state = state.copyWith(
        mensajeCargando: "",
        eventoUI: EventoUIRedirigirPantalla(ruta: LoginScreen.nombreRuta),
      );
    } catch (ex, stacktrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error SplashScreenNotifier->cargarDatosIniciales: $ex",
          stackTrace: stacktrace,
        ),
      );
    }
  }
}
