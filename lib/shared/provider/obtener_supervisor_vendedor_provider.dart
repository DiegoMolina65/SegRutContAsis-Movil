import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/usuario/repositories/provider_usuario_repository.dart';

final obtenerSupervisorVendedorProvider = FutureProvider.autoDispose((
  ref,
) async {
  final usuarioRepo = ref.read(usuarioRepositoryProvider);

  final supervisores = await usuarioRepo.obtenerSupervisores();
  final vendedores = await usuarioRepo.obtenerVendedores();

  return {"supervisores": supervisores, "vendedores": vendedores};
});
