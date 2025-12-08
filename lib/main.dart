import 'package:flutter/material.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:med_geo_asistencia/config/constantes/constantes.dart';
import 'package:med_geo_asistencia/config/constantes/environment.dart';
import 'package:med_geo_asistencia/config/router/app_router.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/seguimiento_vendedor_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/seguimiento_vendedor/repositories/seguimiento_vendedor_repository_impl.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/config_puglins/config_rastreo_gps.dart';
import 'package:overlay_kit/overlay_kit.dart';

import 'segundo_plano/inicializadores/workmanager_inicializador.dart';

@pragma('vm:entry-point')
void headlessTask(bg.HeadlessEvent headlessEvent) async {
  print('[BackgroundGeolocation HeadlessTask]: $headlessEvent');
  // Implement a 'case' for only those events you're interested in.
  switch(headlessEvent.name) {
    case bg.Event.TERMINATE:
      bg.State state = headlessEvent.event;
      print('Debug BackgroundGeolocation - State: $state');
      break;
    case bg.Event.HEARTBEAT:
      bg.HeartbeatEvent event = headlessEvent.event;
      print('Debug BackgroundGeolocation - HeartbeatEvent: $event');
      break;
    case bg.Event.LOCATION:
      bg.Location location = headlessEvent.event;
      try {
        print('Debug BackgroundGeolocation - Location: $location');
        SeguimientoVendedorRepository repositorySeguimientoVendedor = SeguimientoVendedorRepositoryImpl();
        SeguimientoVendedor entidad = SeguimientoVendedor(
          segId: 0,
          venId: 0,
          segFechaCreacion:
          DateTime.tryParse(location.timestamp) ?? DateTime.now(),
          segLatitud: location.coords.latitude,
          segLongitud: location.coords.longitude,
          vendedorNombre: "",
        );
        repositorySeguimientoVendedor.crearSeguimientoVendedor(entidad);
      } catch (ex) {
        // Error silencioso
      }

      break;
    case bg.Event.MOTIONCHANGE:
      bg.Location location = headlessEvent.event;
      print('Debug BackgroundGeolocation - Location: $location');
      break;
    case bg.Event.GEOFENCE:
      bg.GeofenceEvent geofenceEvent = headlessEvent.event;
      print('Debug BackgroundGeolocation - GeofenceEvent: $geofenceEvent');
      break;
    case bg.Event.GEOFENCESCHANGE:
      bg.GeofencesChangeEvent event = headlessEvent.event;
      print('Debug BackgroundGeolocation - GeofencesChangeEvent: $event');
      break;
    case bg.Event.SCHEDULE:
      bg.State state = headlessEvent.event;
      print('Debug BackgroundGeolocation - State: $state');
      break;
    case bg.Event.ACTIVITYCHANGE:
      bg.ActivityChangeEvent event = headlessEvent.event;
      print('Debug BackgroundGeolocation ActivityChangeEvent: $event');
      break;
    case bg.Event.HTTP:
      bg.HttpEvent response = headlessEvent.event;
      print('Debug BackgroundGeolocation HttpEvent: $response');
      break;
    case bg.Event.POWERSAVECHANGE:
      bool enabled = headlessEvent.event;
      print('Debug BackgroundGeolocation ProviderChangeEvent: $enabled');
      break;
    case bg.Event.CONNECTIVITYCHANGE:
      bg.ConnectivityChangeEvent event = headlessEvent.event;
      print('Debug BackgroundGeolocation ConnectivityChangeEvent: $event');
      break;
    case bg.Event.ENABLEDCHANGE:
      bool enabled = headlessEvent.event;
      print('Debug BackgroundGeolocation EnabledChangeEvent: $enabled');
      break;
  }
}

void main() async {
  await Environment.initEnvironment();
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es', null);

  await WorkManagerInicializador.init();
  runApp(ProviderScope(child: const MainApp()));

  // Register your headlessTask:
  BackgroundGeolocation.registerHeadlessTask(headlessTask);
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(goRouterProvider);

    return OverlayKit(
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,

        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          // Especificar que soportamos el español
          Locale('es', 'ES'),
          Locale('en', 'US'), // Opcional, si usas inglés
        ],

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: TemaColor.primaryColor),
          appBarTheme: AppBarTheme(
            backgroundColor: TemaColor.primaryColor,
            foregroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: TemaColor.primaryColor,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: TemaColor.bodyTextColor),
            bodySmall: TextStyle(color: TemaColor.bodyTextColor),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.all(8),
            hintStyle: TextStyle(color: TemaColor.bodyTextColor),
          ),
        ),
        builder: (context, child) {
          return ConfigRastreoGps(child: child!);
        },
      ),
    );
  }
}
