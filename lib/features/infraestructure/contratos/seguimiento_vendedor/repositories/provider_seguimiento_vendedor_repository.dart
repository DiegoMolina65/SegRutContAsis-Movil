import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/seguimiento_vendedor/repositories/seguimiento_vendedor_repository_impl.dart';

final seguimientoVendedorRepositoryProvider = Provider((ref) {
  return SeguimientoVendedorRepositoryImpl();
});
