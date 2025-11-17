import 'package:med_geo_asistencia/features/domain/datasources/cliente_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/cliente/cliente.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class ClienteDatasourceImpl implements ClienteDatasource {
  final apicliente = ApiCliente();

  @override
  Future<Cliente> crearCliente(Cliente cliente) {
    return apicliente.crearCliente(cliente);
  }
}
