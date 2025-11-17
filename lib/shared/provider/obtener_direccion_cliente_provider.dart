import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/direccion_cliente/repositories/provider_direccion_cliente_repository.dart';

final obtenerDireccionClienteProvider = FutureProvider.autoDispose((ref) async {
  final direccionClienteRepo = ref.read(direccionClienteRepositoryProvider);

  final direccioncliente = await direccionClienteRepo
      .obtenerDireccionClientes();

  return {"direccioncliente": direccioncliente};
});
