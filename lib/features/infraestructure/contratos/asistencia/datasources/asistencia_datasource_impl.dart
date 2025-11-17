import 'package:med_geo_asistencia/features/domain/datasources/asistencia_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/asistencia/asistencia.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class AsistenciaDatasourceImpl implements AsistenciaDatasource {
  final apicliente = ApiCliente();

  @override
  Future<Asistencia> crearAsistenciaEntradaDia(Asistencia asistencia) {
    return apicliente.crearAsistenciaEntradaDia(asistencia);
  }

  @override
  Future<Asistencia> crearAsistenciaSalidaDia(Asistencia asistencia) {
    return apicliente.crearAsistenciaSalidaDia(asistencia);
  }

  @override
  Future<List<Asistencia>> obtenerAsistencia() {
    return apicliente.obtenerAsistencia();
  }
}
