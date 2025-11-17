import 'package:med_geo_asistencia/features/domain/datasources/ruta_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/ruta/ruta.dart';
import 'package:med_geo_asistencia/features/domain/repositories/ruta_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/ruta/datasources/ruta_datasource_impl.dart';

class RutaRepositoryImpl implements RutaRepository {
  final RutaDatasource dataSourceRuta;

  RutaRepositoryImpl({RutaDatasource? dataSourceRuta})
    : dataSourceRuta = dataSourceRuta ?? RutaDatasourceImpl();

  @override
  Future<List<Ruta>> obtenerRutas() {
    return dataSourceRuta.obtenerRutas();
  }

  @override
  Future<Ruta> crearRuta(Ruta ruta) {
    return dataSourceRuta.crearRuta(ruta);
  }

  @override
  Future<bool> desactivarRuta(int rutId) {
    return dataSourceRuta.desactivarRuta(rutId);
  }

  @override
  Future<Ruta> editarRuta(Ruta ruta) {
    return dataSourceRuta.editarRuta(ruta);
  }

  @override
  Future<Ruta> obtenerRutaId(int rutId) {
    return dataSourceRuta.obtenerRutaId(rutId);
  }
}
