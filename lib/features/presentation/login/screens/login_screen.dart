import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/custom_elevated_button.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/custom_text_form_field.dart';
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
      barraSuperior: BarraSuperiorState(titulo: "Iniciar Sesión"),
      vista: const LoginView(),
    );
  }
}

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final _formKey = GlobalKey<FormState>();

  void _validarYLogin() {
    if (_formKey.currentState!.validate()) {
      final notificadorVista = ref.read(loginScreenProvider.notifier);
      notificadorVista.onIniciarSesion().ejecutarConLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final _ = ref.watch(loginScreenProvider);
    final notificadorVista = ref.read(loginScreenProvider.notifier);
    final theme = Theme.of(context);

    ref.listen(
      loginScreenProvider.select((estadoVista) => estadoVista.mensajeUi),
      (previous, next) async {
        if (next == null) return;
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
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 450),
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),

                // Logo o Icono
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colorScheme.primaryContainer,
                  ),
                  child: Icon(
                    Icons.local_hospital,
                    size: 64,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 32),

                // Título y subtítulo
                Text(
                  "Bienvenido",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Ingresa tus credenciales para continuar",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 40),

                // Card con formulario
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Campo Usuario
                        CustomTextFormField(
                          onChanged: notificadorVista.onCambioUsuario,
                          textInputAction: TextInputAction.next,
                          hintText: "Ingresa tu usuario",
                          labelText: "Usuario",
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: theme.colorScheme.primary,
                          ),
                          requerido: true,
                          mensajeValidacion: "El usuario es requerido",
                        ),
                        const SizedBox(height: 20),

                        // Campo Contraseña
                        CustomTextFormField(
                          onChanged: notificadorVista.onCambioContrasenia,
                          onFieldSubmitted: (valor) => _validarYLogin(),
                          hintText: "Ingresa tu contraseña",
                          labelText: "Contraseña",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: theme.colorScheme.primary,
                          ),
                          ofuscar: true,
                          requerido: true,
                          mensajeValidacion: "La contraseña es requerida",
                        ),
                        const SizedBox(height: 32),

                        // Botón Iniciar Sesión
                        CustomElevatedButton(
                          onClick: _validarYLogin,
                          etiqueta: "Iniciar Sesión",
                          icono: Icons.login,
                          expandir: true,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Información adicional (opcional)
                Text(
                  "Ingemed Bolivia © 2025",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
