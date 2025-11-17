import 'package:med_geo_asistencia/features/domain/datasources/visita_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/visita/visita.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class VisitaDatasourceImpl implements VisitaDatasource {
  final apicliente = ApiCliente();

  @override
  Future<Visita> crearVisita(Visita visita) {
    return apicliente.crearVisita(visita);
  }

  @override
  Future<bool> desactivarVisita(int visId) {
    return apicliente.desactivarVisita(visId);
  }

  @override
  Future<Visita> editarVisita(Visita visita) {
    return apicliente.editarVisita(visita);
  }

  @override
  Future<List<Visita>> obtenerTodasVisitas() {
    return apicliente.obtenerTodasVisitas();
  }

  @override
  Future<Visita> obtenerVisitaId(int visId) {
    return apicliente.obtenerVisitaId(visId);
  }

  @override
  Future<List<Visita>> obtenerVisitaPorRuta(int rutId) {
    return apicliente.obtenerVisitaPorRuta(rutId);
  }
}
