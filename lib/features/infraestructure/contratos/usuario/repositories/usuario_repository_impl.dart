import 'package:med_geo_asistencia/features/domain/datasources/usuario_datasource_remoto.dart';
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';
import 'package:med_geo_asistencia/features/domain/repositories/usuario_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/usuario/datasources/usuario_datasource_remoto_impl.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  final UsuarioDatasourceRemoto dataSourceRemoto;

  UsuarioRepositoryImpl({UsuarioDatasourceRemoto? dataSourceRemoto})
    : dataSourceRemoto = dataSourceRemoto ?? UsuarioDatasourceRemotoImpl();

  @override
  Future<Resultado<Usuario>> loginUsuario(String usuario, String contrasena) {
    return dataSourceRemoto.loginUsuario(usuario, contrasena);
  }

  @override
  Future<List<Usuario>> obtenerSupervisores() {
    return dataSourceRemoto.obtenerSupervisores();
  }

  @override
  Future<List<Usuario>> obtenerVendedores() {
    return dataSourceRemoto.obtenerVendedores();
  }

  @override
  Future<bool> guardarUsuarioLocal(Usuario usuario) {
    // TODO: implement guardarUsuarioLocal
    throw UnimplementedError();
  }

  @override
  Future<List<Usuario>> listaUsuariosPorAlmacen(int codigoAlmacen) {
    // TODO: implement listaUsuariosPorAlmacen
    throw UnimplementedError();
  }

  @override
  Future<Usuario?> obtenerUsuarioLocal(int codigoUsuario) {
    // TODO: implement obtenerUsuarioLocal
    throw UnimplementedError();
  }

  @override
  Future<String> obtenerVersion() {
    // TODO: implement obtenerVersionDualInventario
    throw UnimplementedError();
  }

  @override
  Future<bool> sincronizarDatosApp(String codigoLocal) {
    // TODO: implement sincronizarDatosApp
    throw UnimplementedError();
  }

  @override
  Future<bool> vaciaLocal() {
    // TODO: implement vaciaLocal
    throw UnimplementedError();
  }
}
