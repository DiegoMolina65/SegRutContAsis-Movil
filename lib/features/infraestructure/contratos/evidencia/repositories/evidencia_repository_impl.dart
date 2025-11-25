import 'package:med_geo_asistencia/features/domain/datasources/evidencia_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/evidencia/evidencia.dart';
import 'package:med_geo_asistencia/features/domain/repositories/evidencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/evidencia/datasources/evidencia_datasource_impl.dart';

class EvidenciaRepositoryImpl implements EvidenciaRepository {
  final EvidenciaDatasource dataSourceEvidencia;

  EvidenciaRepositoryImpl({EvidenciaDatasource? dataSourceEvidencia})
    : dataSourceEvidencia = dataSourceEvidencia ?? EvidenciaDatasourceImpl();

  @override
  Future<Evidencia> crearEvidencia(Evidencia evidencia) {
    return dataSourceEvidencia.crearEvidencia(evidencia);
  }
}
