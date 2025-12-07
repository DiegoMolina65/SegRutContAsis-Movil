import 'package:med_geo_asistencia/features/domain/datasources/seguimiento_vendedor_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class SeguimientoVendedorDatasourceImpl implements SeguimientoVendedorDatasource {
  final apicliente = ApiCliente();

  @override
  Future<SeguimientoVendedor> crearSeguimientoVendedor(SeguimientoVendedor entidad) {
    return apicliente.crearSeguimientoVendedor(entidad);
  }
}
