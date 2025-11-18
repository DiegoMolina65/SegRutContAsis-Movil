import 'package:med_geo_asistencia/features/domain/datasources/marcar_llegada_visita_datasource.dart';
import 'package:med_geo_asistencia/features/domain/entities/marcar_llegada_visita/marcar_llegada_visita.dart';
import 'package:med_geo_asistencia/features/domain/repositories/marcar_llegada_visita_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/marcar_llegada_visita/datasources/marcar_llegada_visita_datasource_impl.dart';

class MarcarLlegadaVisitaVisitaRepositoryImpl
    implements MarcarLlegadaVisitaRepository {
  final MarcarLlegadaVisitaDatasource dataSourceMarcarLlegada;

  MarcarLlegadaVisitaVisitaRepositoryImpl({
    MarcarLlegadaVisitaDatasource? dataSourceMarcarLlegada,
  }) : dataSourceMarcarLlegada =
           dataSourceMarcarLlegada ?? MarcarLlegadaVisitaDatasourceImpl();

  @override
  Future<MarcarLlegadaVisita> crearMarcarLlegadaVisita(
    MarcarLlegadaVisita marcarLlegadaVisita,
  ) {
    return dataSourceMarcarLlegada.crearMarcarLlegadaVisita(
      marcarLlegadaVisita,
    );
  }
}
