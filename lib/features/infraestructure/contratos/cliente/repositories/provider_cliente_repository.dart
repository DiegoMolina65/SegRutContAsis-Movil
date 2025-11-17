import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/cliente/repositories/cliente_respository_impl.dart';

final clienteRepositoryProvider = Provider((ref) {
  return ClienteRespositoryImpl();
});
