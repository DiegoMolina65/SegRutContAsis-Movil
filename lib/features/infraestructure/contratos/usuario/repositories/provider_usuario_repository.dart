import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/usuario/repositories/usuario_repository_impl.dart';

final usuarioRepositoryProvider = Provider((ref) {
  return UsuarioRepositoryImpl();
});
