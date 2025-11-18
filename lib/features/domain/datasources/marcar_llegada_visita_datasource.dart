import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class MarcarLlegadaVisitaDatasource {
  Future<MarcarLlegadaVisita> crearMarcarLlegadaVisita(
    MarcarLlegadaVisita marcarLlegadaVisita,
  );
}
