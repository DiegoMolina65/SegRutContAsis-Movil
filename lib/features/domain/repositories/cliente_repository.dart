import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class ClienteRepository {
  Future<Cliente> crearCliente(Cliente cliente);
}
