import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/CustomElevatedButton.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/CustomTextFormField.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/helpers/extensiones/loading_overlay_extension.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/login_screen_provider.dart';

class LoginScreen extends StatelessWidget {
  static const nombreRuta = '/login-screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Login"),
      vista: const LoginView(),
    );
  }
}

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ = ref.watch(loginScreenProvider);
    final notificadorVista = ref.read(loginScreenProvider.notifier);

    ref.listen(
      loginScreenProvider.select((estadoVista) => estadoVista.mensajeUi),
      (previous, next) async {
        if (next == null) return;

        /// Mostrar mensaje UI
        DialogoMensajeUI(mensajeUI: next).show(context);
      },
    );
    ref.listen(
      loginScreenProvider.select((estadoVista) => estadoVista.eventoUI),
      (previous, next) async {
        if (next == null) return;
      },
    );

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "BIENVENIDO",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              // validator: emailValidator.call,
              // onSaved: (value) {},
              onChanged: notificadorVista.onCambioUsuario,
              textInputAction: TextInputAction.next,
              // keyboardType: TextInputType.emailAddress,
              hintText: "Usuario",
            ),
            const SizedBox(height: 8),

            // Password Field
            CustomTextFormField(
              // validator: passwordValidator.call,
              // onSaved: (value) {},
              onChanged: notificadorVista.onCambioContrasenia,
              onFieldSubmitted: (valor) =>
                  notificadorVista.onIniciarSesion().ejecutarConLoading(),
              hintText: "Contraseña",
              ofuscar: true,
            ),
            const SizedBox(height: 16),

            // Forget Password
            // GestureDetector(
            //   onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const ForgotPasswordScreen(),
            //     ),
            //   ),
            //   child: Text(
            //     "Forget Password?",
            //     style: Theme.of(context)
            //         .textTheme
            //         .bodySmall!
            //         .copyWith(fontWeight: FontWeight.w500),
            //   ),
            // ),
            // const SizedBox(height: defaultPadding),

            // Sign In Button
            CustomElevatedButton(
              onClick: () =>
                  notificadorVista.onIniciarSesion().ejecutarConLoading(),
              etiqueta: "Iniciar Sesión",
            ),
          ],
        ),
      ),
    );
  }
}
