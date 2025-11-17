import 'package:med_geo_asistencia/features/domain/datasources/visita_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/visita/visita.dart';
import 'package:med_geo_asistencia/features/domain/repositories/visita_respository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/visita/datasource/visita_datasource_impl.dart';

class VisitaRepositoryImpl implements VisitaRepository {
  final VisitaDatasource datasourceVisita;

  VisitaRepositoryImpl({VisitaDatasource? datasourceVisita})
    : datasourceVisita = datasourceVisita ?? VisitaDatasourceImpl();

  @override
  Future<Visita> crearVisita(Visita visita) {
    return datasourceVisita.crearVisita(visita);
  }

  @override
  Future<bool> desactivarVisita(int visId) {
    return datasourceVisita.desactivarVisita(visId);
  }

  @override
  Future<Visita> editarVisita(Visita visita) {
    return datasourceVisita.editarVisita(visita);
  }

  @override
  Future<List<Visita>> obtenerTodasVisitas() {
    return datasourceVisita.obtenerTodasVisitas();
  }

  @override
  Future<Visita> obtenerVisitaId(int visId) {
    return datasourceVisita.obtenerVisitaId(visId);
  }

  @override
  Future<List<Visita>> obtenerVisitaPorRuta(int rutId) {
    return datasourceVisita.obtenerVisitaPorRuta(rutId);
  }
}
