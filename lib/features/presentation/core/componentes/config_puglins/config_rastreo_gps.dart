import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart'
    as bg;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:med_geo_asistencia/features/domain/entities/seguimiento_vendedor/seguimiento_vendedor.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/seguimiento_vendedor/repositories/provider_seguimiento_vendedor_repository.dart';

class ConfigRastreoGps extends ConsumerStatefulWidget {
  final Widget child;

  const ConfigRastreoGps({super.key, required this.child});

  @override
  ConfigRastreoGpsState createState() => ConfigRastreoGpsState();
}

class ConfigRastreoGpsState extends ConsumerState<ConfigRastreoGps> {
  bg.Location? ultimaUbicacion = null;
  @override
  void initState() {
    super.initState();
    _initBackgroundGeolocation();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _initBackgroundGeolocation() async {
    final repositorySeguimientoVendedor = ref.read(
      seguimientoVendedorRepositoryProvider,
    );
    ////
    // 1.  Listen to events (See docs for all 12 available events).
    //

    // Fired whenever a location is recorded
    bg.BackgroundGeolocation.onLocation((bg.Location location) {
      try {
        print('[Debug ConfigRastreoGps location] - $location');
        if (ultimaUbicacion != null) {
          double distancia = Geolocator.distanceBetween(ultimaUbicacion!.coords.latitude,
              ultimaUbicacion!.coords.longitude, location.coords.latitude, location.coords.longitude);
          if (distancia < 20) {
            return;
          }
        }
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
        ultimaUbicacion = location;
      } catch (ex) {
        // Error silencioso
      }

    });

    // Fired whenever the plugin changes motion-state (stationary->moving and vice-versa)
    bg.BackgroundGeolocation.onMotionChange((bg.Location location) {
      print('[Debug ConfigRastreoGps motionchange] - $location');
    });

    // Fired whenever the state of location-services changes.  Always fired at boot
    bg.BackgroundGeolocation.onProviderChange((bg.ProviderChangeEvent event) {
      print('[Debug ConfigRastreoGps providerchange] - $event');
    });

    ////
    // 2.  Configure the plugin
    //
    bg.State estadoBackgroundGeolocation = await bg.BackgroundGeolocation.ready(
      bg.Config(
        desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
        distanceFilter: 20.0,
        activityRecognitionInterval: 15000,
        fastestLocationUpdateInterval: 30000,
        locationUpdateInterval: 15000,
        enableHeadless: true,
        stopOnTerminate: false,
        startOnBoot: true,
        foregroundService: true,
        debug: true,
        logLevel: bg.Config.LOG_LEVEL_VERBOSE,
        reset: true,
      ),
    );
    // .then((bg.State state) {
    //   setState(() {
    //     _enabled = state.enabled;
    //     _isMoving = state.isMoving == true;
    //   });
    // });

    if (!estadoBackgroundGeolocation.enabled) {
      estadoBackgroundGeolocation = await bg.BackgroundGeolocation.start();
      if (kDebugMode) {
        print(
          '[Debug BackgroundGeolocation.start()] success $estadoBackgroundGeolocation',
        );
      }
      // setState(() {
      //   _enabled = state.enabled;
      //   _isMoving = state.isMoving == true;
      // });
    }
  }
}
