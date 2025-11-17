import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class RutaRepository {
  Future<List<Ruta>> obtenerRutas();
  Future<Ruta> obtenerRutaId(int rutId);
  Future<Ruta> crearRuta(Ruta ruta);
  Future<Ruta> editarRuta(Ruta ruta);
  Future<bool> desactivarRuta(int rutId);
}
