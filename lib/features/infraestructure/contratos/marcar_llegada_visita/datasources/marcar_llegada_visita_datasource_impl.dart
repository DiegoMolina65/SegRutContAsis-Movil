import 'package:med_geo_asistencia/features/domain/datasources/marcar_llegada_visita_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/marcar_llegada_visita/marcar_llegada_visita.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class MarcarLlegadaVisitaDatasourceImpl
    implements MarcarLlegadaVisitaDatasource {
  final apicliente = ApiCliente();

  @override
  Future<MarcarLlegadaVisita> crearMarcarLlegadaVisita(
    MarcarLlegadaVisita marcarLlegadaVisita,
  ) {
    return apicliente.crearMarcarLlegadaVisita(marcarLlegadaVisita);
  }
}
