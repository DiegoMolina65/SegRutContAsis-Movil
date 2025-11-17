import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

abstract class ClienteDatasource {
Future<Cliente> crearCliente(Cliente cliente);
}
