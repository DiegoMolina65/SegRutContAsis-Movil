
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';

abstract class UsuarioRepository {
  Future<Resultado<Usuario>> loginUsuario(String usuario, String contrasena);
  Future<bool> guardarUsuarioLocal(Usuario usuario);
  Future<Usuario?> obtenerUsuarioLocal(int codigoUsuario);
  Future<bool> vaciaLocal();
  Future<bool> sincronizarDatosApp(String codigoLocal);
  Future<String> obtenerVersionDualInventario();
  Future<List<Usuario>> listaUsuariosPorAlmacen(int codigoAlmacen);
}
