import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class AsistenciaRepository {
  Future<List<Asistencia>> obtenerAsistencia();
  Future<Asistencia> crearAsistenciaEntradaDia(Asistencia asistencia);
  Future<Asistencia> crearAsistenciaSalidaDia(Asistencia asistencia);
}
