import 'package:med_geo_asistencia/features/domain/datasources/direccion_cliente_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class DireccionClienteDatasourceImpl implements DireccionClienteDatasource {
  final apicliente = ApiCliente();

  @override
  Future<List<DireccionCliente>> obtenerDireccionClientes() {
    return apicliente.obtenerDireccionClientes();
  }
}
