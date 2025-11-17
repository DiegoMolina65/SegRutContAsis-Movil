import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/repositories/ruta_repository_impl.dart';

final rutaRepositoryProvider = Provider((ref) {
  return RutaRepositoryImpl();
});
