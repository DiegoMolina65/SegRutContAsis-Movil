import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_estatus.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_entrada_screen/asistencia_entrada_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_salida_screen/asistencia_salida_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/lista_asistencia_screen/lista_asistencia_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/cliente_screens/crear_cliente_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/crear_ruta_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/lista_ruta_screen/lista_ruta_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/crear_visita_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/lista_visita_screen/lista_visita_screen.dart';
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

      // TODO: clientes
      GoRoute(
        path: CrearClienteScreen.nombreRuta,
        builder: (context, state) => const CrearClienteScreen(),
      ),

      // TODO: visitas
      GoRoute(
        path: CrearVisitaScreen.nombreRuta,
        builder: (context, state) => const CrearVisitaScreen(),
      ),
      GoRoute(
        path: '${CrearVisitaScreen.nombreRuta}/:visId',
        builder: (context, state) {
          final visIdString = state.pathParameters['visId'];
          final visId = int.tryParse(visIdString ?? '');
          return CrearVisitaScreen(visId: visId);
        },
      ),
      GoRoute(
        path: ListaVisitaScreen.nombreRuta,
        builder: (context, state) => const ListaVisitaScreen(),
      ),

      // TODO: asistencias
      GoRoute(
        path: AsistenciaEntradaScreen.nombreRuta,
        builder: (context, state) => const AsistenciaEntradaScreen(),
      ),
      GoRoute(
        path: AsistenciaSalidaScreen.nombreRuta,
        builder: (context, state) => const AsistenciaSalidaScreen(),
      ),
      GoRoute(
        path: ListaAsistenciaScreen.nombreRuta,
        builder: (context, state) => const ListaAsistenciaScreen(),
      ),

      // TODO: ruta
      GoRoute(
        path: CrearRutaScreen.nombreRuta,
        builder: (context, state) => const CrearRutaScreen(),
      ),
      GoRoute(
        path: '${CrearRutaScreen.nombreRuta}/:rutId',
        builder: (context, state) {
          final rutIdString = state.pathParameters['rutId'];
          final rutId = int.tryParse(rutIdString ?? '');
          return CrearRutaScreen(rutId: rutId);
        },
      ),
      GoRoute(
        path: ListaRutaScreen.nombreRuta,
        builder: (context, state) => const ListaRutaScreen(),
      ),

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
        if (isGoingTo == LoginScreen.nombreRuta) {
          /// Si no es las anteriores mandamos al menu principal
          return CrearRutaScreen.nombreRuta;
        }
      }

      return null;
    },
  );
});
