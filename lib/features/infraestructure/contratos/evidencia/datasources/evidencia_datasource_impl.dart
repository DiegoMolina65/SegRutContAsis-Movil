import 'package:med_geo_asistencia/features/domain/datasources/evidencia_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/evidencia/evidencia.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class EvidenciaDatasourceImpl implements EvidenciaDatasource {
  final apicliente = ApiCliente();

  @override
  Future<Evidencia> crearEvidencia(Evidencia evidencia) {
    return apicliente.crearEvidenciaVisita(evidencia);
  }
}
