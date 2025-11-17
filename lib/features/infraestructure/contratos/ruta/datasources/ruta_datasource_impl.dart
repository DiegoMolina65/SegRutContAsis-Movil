import 'package:med_geo_asistencia/features/domain/datasources/ruta_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/ruta/ruta.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class RutaDatasourceImpl implements RutaDatasource {
  final apicliente = ApiCliente();

  @override
  Future<Ruta> crearRuta(Ruta ruta) {
    return apicliente.crearRuta(ruta);
  }

  @override
  Future<bool> desactivarRuta(int rutId) {
    return apicliente.desactivarRuta(rutId);
  }

  @override
  Future<Ruta> editarRuta(Ruta ruta) {
    return apicliente.editarRuta(ruta);
  }

  @override
  Future<Ruta> obtenerRutaId(int rutId) {
    return apicliente.obtenerRutaId(rutId);
  }

  @override
  Future<List<Ruta>> obtenerRutas() {
    return apicliente.obtenerRutas();
  }
}
