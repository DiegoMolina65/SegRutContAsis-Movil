import 'package:med_geo_asistencia/features/domain/datasources/direccion_cliente_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/direccion_cliente_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/direccion_cliente/datasources/direccion_cliente_datasource_impl.dart';

class DireccionClienteRepositoryImpl implements DireccionClienteRepository {
  final DireccionClienteDatasource dataSourceDireccionCliente;

  DireccionClienteRepositoryImpl({
    DireccionClienteDatasource? dataSourceDireccionCliente,
  }) : dataSourceDireccionCliente =
           dataSourceDireccionCliente ?? DireccionClienteDatasourceImpl();

  @override
  Future<List<DireccionCliente>> obtenerDireccionClientes() {
    return dataSourceDireccionCliente.obtenerDireccionClientes();
  }
}
