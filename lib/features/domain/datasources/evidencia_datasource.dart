
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';


abstract class EvidenciaDatasource {
  Future<Evidencia> crearEvidencia(Evidencia evidencia);
}
