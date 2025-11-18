
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';


abstract class SeguimientoVendedorDatasource {
  Future<SeguimientoVendedor> crearSeguimientoVendedor(SeguimientoVendedor entidad);

}
