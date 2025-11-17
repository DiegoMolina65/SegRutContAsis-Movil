import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/asistencia/repositories/asistencia_repository_impl.dart';

final asistenciaRepositoryProvider = Provider((ref) {
  return AsistenciaRepositoryImpl();
});
