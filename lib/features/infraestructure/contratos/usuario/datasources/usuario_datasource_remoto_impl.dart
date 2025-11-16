import 'package:med_geo_asistencia/features/domain/datasources/usuario_datasource_remoto.dart';
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/api_cliente.dart';

class UsuarioDatasourceRemotoImpl implements UsuarioDatasourceRemoto {
  final apicliente = ApiCliente();

  @override
  Future<Resultado<Usuario>> loginUsuario(String usuario, String contrasena) {
    return apicliente.loginUsuario(usuario, contrasena);
  }
}
