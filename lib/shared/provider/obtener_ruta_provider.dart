import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/repositories/provider_ruta_repository.dart';

final obtenerRutaProvider = FutureProvider.autoDispose((ref) async {
  final rutaRepo = ref.read(rutaRepositoryProvider);

  final ruta = await rutaRepo
      .obtenerRutas();

  return {"ruta": ruta};
});
