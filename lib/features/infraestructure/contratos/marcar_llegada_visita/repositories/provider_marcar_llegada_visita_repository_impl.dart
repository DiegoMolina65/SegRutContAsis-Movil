import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/marcar_llegada_visita/repositories/marcar_llegada_visita_visita_repository_impl.dart';

final marcarLlegadaVisitaRepositoryProvider = Provider((ref) {
  return MarcarLlegadaVisitaVisitaRepositoryImpl();
});
