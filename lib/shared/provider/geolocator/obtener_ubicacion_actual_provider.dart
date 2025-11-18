import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

// Este FutureProvider obtiene la posición y maneja todos los permisos y errores.
// Puedes usar .autoDispose si quieres que se limpie cuando ya nadie lo escucha.
final obtenerPosicionActualProvider = FutureProvider.autoDispose<Position>((
  ref,
) async {
  // Verificar si el servicio de ubicación está habilitado
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error(
      'El servicio de ubicación del dispositivo está deshabilitado.',
    );
  }

  // Verificar y solicitar permisos
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error(
        'Los permisos de ubicación fueron denegados por el usuario.',
      );
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Los permisos de ubicación están permanentemente denegados. Acceda a la configuración para activarlos.',
    );
  }

  // Obtener la posición actual utilizando 'settings'
  return await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
    timeLimit: const Duration(
      seconds: 15,
    ), // Se mantiene para control de tiempo total
  );
});
