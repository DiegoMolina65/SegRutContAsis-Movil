import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class DireccionClienteRepository {
  Future<List<DireccionCliente>> obtenerDireccionClientes();
}
