import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';
import 'package:med_geo_asistencia/features/domain/repositories/usuario_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/usuario/repositories/provider_usuario_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

import 'auth_provider.dart';
import 'login_screen_state.dart';

final loginScreenProvider = StateNotifierProvider.autoDispose((ref) {
  final usuarioRepositorio = ref.read(usuarioRepositoryProvider);
  final notificadorAutenticacion = ref.read(authProvider.notifier);
  return LoginScreenNotifier(
    usuarioRepositorio: usuarioRepositorio,
    notificadorAutenticacion: notificadorAutenticacion,
  );
});

class LoginScreenNotifier extends StateNotifier<LoginScreenState> {
  final UsuarioRepository usuarioRepositorio;
  final AutenticacionNotifier notificadorAutenticacion;

  LoginScreenNotifier({
    required this.usuarioRepositorio,
    required this.notificadorAutenticacion,
  }) : super(LoginScreenState());

  void onCambioUsuario(String valor) {
    try {
      state = state.copyWith(aliasUsuario: valor);
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje("$e", stackTrace: stackTrace),
      );
    }
  }

  void onCambioContrasenia(String valor) {
    try {
      state = state.copyWith(contrasenia: valor);
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje("$e", stackTrace: stackTrace),
      );
    }
  }

  Future<void> onIniciarSesion() async {
    try {
      await Future.delayed(Duration.zero);
      final resultadoUsuario = await usuarioRepositorio.loginUsuario(
        state.aliasUsuario,
        state.contrasenia,
      );
      await resultadoUsuario.when(
        ok: (usuario) async {
          /// Usuario autenticado
          await notificadorAutenticacion.setUsuarioLogueado(usuario);
        },
        error: (mensaje) {
          state = state.copyWith(mensajeUi: MensajeUI.errorMensaje(mensaje));
        },
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje("$e", stackTrace: stackTrace),
      );
    }
  }
}
