
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';


abstract class SeguimientoVendedorRepository {
  Future<SeguimientoVendedor> crearSeguimientoVendedor(SeguimientoVendedor entidad);
  
}
