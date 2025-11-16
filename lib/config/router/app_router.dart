import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_estatus.dart';
import 'package:med_geo_asistencia/features/presentation/screens_referencias.dart';

import 'app_router_notifier.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

final goRouterProvider = Provider((ref) {
  final goRouterNotifier = ref.read(goRouterNotifierProvider);
  // final navigatorKey = ref.read(navigationKeyProvider);

  return GoRouter(
    // navigatorKey: navigatorKey,
    initialLocation: SplashScreen.nombreRuta,
    refreshListenable: goRouterNotifier,
    observers: [routeObserver],
    routes: [
      GoRoute(
        path: SplashScreen.nombreRuta,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: LoginScreen.nombreRuta,
        builder: (context, state) => const LoginScreen(),
      ),
      // GoRoute(
      //   path: SettingScreen.nombreRuta,
      //   builder: (context, state) => const SettingScreen(),
      // ),
      GoRoute(
        path: PrincipalScreen.nombreRuta,
        builder: (context, state) => const PrincipalScreen(),
      ),
      // GoRoute(
      //   path: MarcacionScreen.nombreRuta,
      //   builder: (context, state) => const MarcacionScreen(),
      // ),
      // GoRoute(
      //   path: UbicacionScreen.nombreRuta,
      //   builder: (context, state) => const UbicacionScreen(),
      // ),
      // GoRoute(
      //   path: "${InfoEmpresaDetalleScreen.nombreRuta}/:idEmpresa",
      //   builder: (context, state) {
      //     final idEmpresa =
      //         int.tryParse(state.pathParameters['idEmpresa'] ?? '0') ?? 0;
      //     return InfoEmpresaDetalleScreen(idEmpresa: idEmpresa);
      //   },
      // ),
      // GoRoute(
      //   path: "${UbicacionEmpresaScreen.nombreRuta}/:idEmpresa",
      //   builder: (context, state) {
      //     final idEmpresa =
      //         int.tryParse(state.pathParameters['idEmpresa'] ?? '0') ?? 0;
      //     return UbicacionEmpresaScreen(idEmpresa: idEmpresa);
      //   },
      // ),
      // GoRoute(
      //   path: UsuarioScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const UsuarioScreen();
      //   },
      // ),
      // GoRoute(
      //   path: SincronizacionScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const SincronizacionScreen();
      //   },
      // ),
      // GoRoute(
      //   path: AutogestionScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const AutogestionScreen();
      //   },
      // ),
      // GoRoute(
      //   path: DescargarBoletaDePagoScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const DescargarBoletaDePagoScreen();
      //   },
      // ),
      // GoRoute(
      //   path: SolicitarVacacionScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const SolicitarVacacionScreen();
      //   },
      // ),
      // GoRoute(
      //   path: ListarSolicitudesDeVacacionesScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const ListarSolicitudesDeVacacionesScreen();
      //   },
      // ),
      // GoRoute(
      //   path: CambioContrasenaScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const CambioContrasenaScreen();
      //   },
      // ),
      // GoRoute(
      //   path: FormularioSolicitarPermisosScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const FormularioSolicitarPermisosScreen();
      //   },
      // ),
      // GoRoute(
      //   path: CapturaDatosFacialesScreen.nombreRuta,
      //   builder: (context, state) {
      //     return const CapturaDatosFacialesScreen();
      //   },
      // ),
      // GoRoute(
      //   path: '/register/:idServidorUsuario',
      //   builder: (context, state) {
      //     final idServidorUsuario =
      //         int.tryParse(state.pathParameters['idServidorUsuario'] ?? '0') ??
      //             0;
      //     return RegisterUserScreen(
      //       idServidorUsuario: idServidorUsuario,
      //     );
      //   },
      // ),
    ],
    /**Analizar la manera de tener una lista de rutas recorridas */
    redirect: (context, state) async {
      final isGoingTo = state.matchedLocation;
      final authStatus = goRouterNotifier.authStatus;

      if (isGoingTo == SplashScreen.nombreRuta ||
          authStatus == AutenticacionEstatus.verificando) {
        return null;
      }

      if (authStatus == AutenticacionEstatus.noAutenticado) {
        if (isGoingTo == LoginScreen.nombreRuta) {
          return null;
        }

        return LoginScreen.nombreRuta;
      }

      if (authStatus == AutenticacionEstatus.autenticado) {
        if (isGoingTo ==
            LoginScreen.nombreRuta) {
          /// Si no es las anteriores mandamos al menu principal
          return PrincipalScreen.nombreRuta;
        }
      }

      return null;
    },
  );
});
