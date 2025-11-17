import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/direccion_cliente/repositories/direccion_cliente_repository_impl.dart';

final direccionClienteRepositoryProvider = Provider((ref) {
  return DireccionClienteRepositoryImpl();
});
