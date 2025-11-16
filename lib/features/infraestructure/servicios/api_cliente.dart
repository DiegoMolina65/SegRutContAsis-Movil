import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:med_geo_asistencia/config/constantes/environment.dart';
import 'package:med_geo_asistencia/features/domain/entities/usuario/usuario.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/usuario/usuario_dto.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';

import 'package:med_geo_asistencia/features/infraestructure/mappers/usuario_mapper.dart';

import 'dio_servicio/dio_servicio.dart';

class ApiCliente extends DioServicio {
  // final GestorLogs gestorLogs;

  ApiCliente(
    /*{this.gestorLogs =
      const GestorLogs(configLogger: ConfigLogger(loguear: true))}*/
  ) : super(
        urlBase: Environment.urlApi,
        //confiarEnTodosLosCertificados: true,
        interceptores: [
          InterceptorsWrapper(
            onRequest: (options, handler) async {
              options.baseUrl = Environment.urlApi;
              // // Obtener el empleado, aquí debes llamar tu lógica real.
              // final nickUsuario = await AppPreference.getValue<String>(
              //     KeyAppPreferences.nickUsuario);
              // final clave = await AppPreference.getValue<String>(
              //     KeyAppPreferences.clave);
              // if (nickUsuario != null && clave != null) {
              //   options.headers['Authorization'] =
              //   'Basic ${base64Encode(latin1.encode('$nickUsuario:$clave'))}';
              // }
              // options.headers['Authorization'] =
              //     "Basic bWFyaWEuc29saXo6MjAyQ0I5NjJBQzU5MDc1Qjk2NEIwNzE1MkQyMzRCNzA=";
              // Continuar con la solicitud

              /// Revisar si se debe loguear el request
              // try {
              //   final loguear = options.extra['loguear'] as bool? ?? false;
              //   if (loguear) {
              //     gestorLogs.escribirLog(
              //         'REQUEST: ${options.method} ${options.uri}\nHeaders: ${options.headers}\nData: ${options.data}');
              //   }
              // } catch (ex) {
              //   if (kDebugMode) {
              //     print("Debug Error print datos request: $ex");
              //   }
              // }
              handler.next(options);
            },
            onResponse: (response, handler) {
              // /// Revisar si se debe loguear el response
              // try {
              //   final loguear =
              //       response.requestOptions.extra['loguear'] as bool? ??
              //           false;
              //   if (loguear) {
              //     gestorLogs.escribirLog(
              //         'RESPONSE [${response.statusCode}]: ${response.requestOptions.uri}\nData: ${response.data}');
              //   }
              // } catch (ex) {
              //   if (kDebugMode) {
              //     print("Debug Error print datos response: $ex");
              //   }
              // }
              handler.next(response);
            },
            onError: (error, handler) {
              // /// Revisar si se debe loguear el error
              // try {
              //   final loguear =
              //       error.requestOptions.extra['loguear'] as bool? ?? false;
              //   if (loguear) {
              //     gestorLogs.escribirLog(
              //         'ERROR [${error.response?.statusCode}]: ${error.requestOptions.uri}\nMensaje: ${error.message}\nData: ${error.response?.data}');
              //   }
              // } catch (ex) {
              //   if (kDebugMode) {
              //     print("Debug Error print datos error: $ex");
              //   }
              // }

              handler.next(error);
            },
          ),
        ],
      );

  Future<Resultado<Usuario>> loginUsuario(
    String aliasUsuario,
    String contrasena,
  ) async {
    try {
      Map<String, Object> data = {
        "usuarioLog": aliasUsuario,
        "contrasenaLog": contrasena,
      };

      final response = await post(
        'Usuario/loginUsuario',
        options: Options(
          // extra: {"loguear": true},
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
        data: data,
      );

      final Map<String, dynamic> responseData = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      final usuarioDto = UsuarioDto.fromJson(responseData);

      return Resultado.ok(UsuarioMapper.obtenerEntidad(usuarioDto));
    } catch (e, _) {
      return Resultado.error(e.toString());
    }
  }
}
