import 'package:med_geo_asistencia/features/domain/datasources/seguimiento_vendedor_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/seguimiento_vendedor_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/seguimiento_vendedor/datasources/seguimiento_vendedor_datasource_impl.dart';

class SeguimientoVendedorRepositoryImpl implements SeguimientoVendedorRepository {
  final SeguimientoVendedorDatasource dataSource;

  SeguimientoVendedorRepositoryImpl({
    SeguimientoVendedorDatasource? dataSource,
  }) : dataSource =
      dataSource ?? SeguimientoVendedorDatasourceImpl();

  @override
  Future<SeguimientoVendedor> crearSeguimientoVendedor(SeguimientoVendedor entidad) {
   return dataSource.crearSeguimientoVendedor(entidad);
  }
}
