import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class VisitaRepository {
  Future<List<Visita>> obtenerTodasVisitas();
  Future<Visita> obtenerVisitaId(int visId);
  Future<List<Visita>> obtenerVisitaPorRuta(int rutId);
  Future<Visita> crearVisita(Visita visita);
  Future<Visita> editarVisita(Visita visita);
  Future<bool> desactivarVisita(int visId);
}
