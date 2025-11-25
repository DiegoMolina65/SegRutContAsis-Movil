import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/evidencia/repositories/evidencia_repository_impl.dart';

final evidenciaRepositoryProvider = Provider((ref) {
  return EvidenciaRepositoryImpl();
});
