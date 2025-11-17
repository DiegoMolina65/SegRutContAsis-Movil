import 'package:med_geo_asistencia/features/domain/datasources/cliente_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/cliente/cliente.dart';
import 'package:med_geo_asistencia/features/domain/repositories/cliente_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/cliente/datasources/cliente_datasource_impl.dart';

class ClienteRespositoryImpl implements ClienteRepository {
  final ClienteDatasource datasourceCliente;

  ClienteRespositoryImpl({ClienteDatasource? datasourceCliente})
    : datasourceCliente = datasourceCliente ?? ClienteDatasourceImpl();

  @override
  Future<Cliente> crearCliente(Cliente cliente) {
    return datasourceCliente.crearCliente(cliente);
  }
}
