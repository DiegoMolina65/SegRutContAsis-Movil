import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class EvidenciaRepository {
  Future<Evidencia> crearEvidencia(Evidencia evidencia);
}
