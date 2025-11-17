
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';


abstract class DireccionClienteDatasource {
  Future<List<DireccionCliente>> obtenerDireccionClientes();
}
