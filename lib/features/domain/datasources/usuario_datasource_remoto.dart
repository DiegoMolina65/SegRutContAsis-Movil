
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';

abstract class UsuarioDatasourceRemoto {
  Future<Resultado<Usuario>> loginUsuario(String usuario, String contrasena);
}
