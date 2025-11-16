import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/config/constantes/llave_app_preferencia.dart';
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/repositories/usuario_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/usuario/repositories/provider_usuario_repository.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_estatus.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_state.dart';
import 'package:med_geo_asistencia/shared/app_preferencias/app_preferencia.dart';

final authProvider =
    StateNotifierProvider<AutenticacionNotifier, AutenticacionState>((ref) {
      final usuarioRepository = ref.read(usuarioRepositoryProvider);

      return AutenticacionNotifier(usuarioRepository: usuarioRepository);
    });

class AutenticacionNotifier extends StateNotifier<AutenticacionState> {
  final UsuarioRepository usuarioRepository;

  AutenticacionNotifier({required this.usuarioRepository})
    : super(AutenticacionState()) {
    checkAuthStatus();
  }

  void checkAuthStatus() async {
    try {
      final codigoUsuario = await AppPreferencia.obtenerValor<int>(
        LlaveAppPreferencia.usrId,
      );

      if (codigoUsuario == null) {
        return logout();
      }

      final usuario = await usuarioRepository.obtenerUsuarioLocal(
        codigoUsuario,
      );
      if (usuario == null) {
        // Cerrar sesion
        return logout();
      }

      await setUsuarioLogueado(usuario);
    } catch (e) {
      if (kDebugMode) {
        print('Debug error check empleado: $e');
      }
      await logout();
    }
  }

  // Future<Usuario> login(String nickUsuario, String contrasena) async {
  //   await Future.delayed(const Duration(milliseconds: 500));
  //
  //   try {
  //     await Future.delayed(const Duration(seconds: 3));
  //     // Iniciar sesion (login)
  //     final usuario = await usuarioRepository.loginUsuario(
  //       nickUsuario,
  //       contrasena,
  //     );
  //
  //     // Guardar usuario
  //     await usuarioRepository.guardarUsuarioLocal(usuario);
  //
  //     // // Sincronizar datosApp
  //     // await usuarioRepository
  //     //     .sincronizarDatosApp(usuario.codigoLocal.toString());
  //
  //     await setUsuarioLogueado(usuario);
  //
  //     return usuario;
  //   }
  //   /*on CustomError catch (e) {
  //     await logout(e.message, e);
  //     return null;
  //   }*/
  //   catch (e) {
  //     rethrow;
  //   }
  // }

  Future<void> setUsuarioLogueado(Usuario usuario) async {
    await AppPreferencia.colocarValor<int>(
      LlaveAppPreferencia.usrId,
      usuario.usrId,
    );
    await AppPreferencia.colocarValor<String>(
      LlaveAppPreferencia.token,
      usuario.token,
    );

    state = state.copyWith(
      // usuario: usuario,
      autenticacionEstatus: AutenticacionEstatus.autenticado,
    );
  }

  Future<void> logout() async {
    await AppPreferencia.eliminar(LlaveAppPreferencia.usrId);
    await AppPreferencia.eliminar(LlaveAppPreferencia.token);

    // limpiar base de datos
    // await usuarioRepository.vaciaLocal();

    state = state.copyWith(
      autenticacionEstatus: AutenticacionEstatus.noAutenticado,
    );
  }
}
