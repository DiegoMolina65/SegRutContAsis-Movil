import 'package:med_geo_asistencia/features/domain/datasources/asistencia_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/asistencia/asistencia.dart';
import 'package:med_geo_asistencia/features/domain/repositories/asistencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/asistencia/datasources/asistencia_datasource_impl.dart';

class AsistenciaRepositoryImpl implements AsistenciaRepository {
  final AsistenciaDatasource dataSourceAsistencia;

  AsistenciaRepositoryImpl({AsistenciaDatasource? dataSourceAsistencia})
    : dataSourceAsistencia = dataSourceAsistencia ?? AsistenciaDatasourceImpl();

  @override
  Future<Asistencia> crearAsistenciaEntradaDia(Asistencia asistencia) {
    return dataSourceAsistencia.crearAsistenciaEntradaDia(asistencia);
  }

  @override
  Future<Asistencia> crearAsistenciaSalidaDia(Asistencia asistencia) {
    return dataSourceAsistencia.crearAsistenciaSalidaDia(asistencia);
  }

  @override
  Future<List<Asistencia>> obtenerAsistencia() {
    return dataSourceAsistencia.obtenerAsistencia();
  }
}
