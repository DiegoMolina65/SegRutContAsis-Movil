import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/repositories/visita_repository_impl.dart';

final visitaRepositoryProvider = Provider((ref) {
  return VisitaRepositoryImpl();
});
