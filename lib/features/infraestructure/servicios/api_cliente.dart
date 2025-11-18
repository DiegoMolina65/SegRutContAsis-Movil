import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:med_geo_asistencia/config/constantes/environment.dart';
import 'package:med_geo_asistencia/config/constantes/llave_app_preferencia.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/modelos/dtos/export_dto.dart';
import 'package:med_geo_asistencia/features/domain/modelos/resultado.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/asistencia_mapper.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/cliente_mapper.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/direccion_cliente_mapper.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/marcar_llegada_visita_mapper.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/ruta_mapper.dart';

import 'package:med_geo_asistencia/features/infraestructure/mappers/usuario_mapper.dart';
import 'package:med_geo_asistencia/features/infraestructure/mappers/visita_mapper.dart';
import 'package:med_geo_asistencia/shared/app_preferencias/app_preferencia.dart';

import 'dio_servicio/dio_servicio.dart';

class ApiCliente extends DioServicio {
  // final GestorLogs gestorLogs;

  ApiCliente()
    : super(
        urlBase: Environment.urlApi,
        interceptores: [
          InterceptorsWrapper(
            // Inyectar Token en la solicitud
            onRequest: (options, handler) async {
              options.baseUrl = Environment.urlApi;

              const loginPath = 'Usuario/loginUsuario';

              final token = await AppPreferencia.obtenerValor<String>(
                LlaveAppPreferencia.token,
              );

              // Agregar el token solo si no es la ruta de login
              if (options.path != loginPath &&
                  token != null &&
                  token.isNotEmpty) {
                options.headers['Authorization'] = 'Bearer $token';
              }

              handler.next(options);
            },

            // Lógica para manejar la respuesta exitosa
            onResponse: (response, handler) {
              handler.next(response);
            },

            // Lógica para manejar errores, especialmente el 401
            onError: (error, handler) async {
              final statusCode = error.response?.statusCode;

              // Detectar 401 (Token inválido/expirado) y limpiar sesión
              if (statusCode == 401) {
                await AppPreferencia.eliminar(LlaveAppPreferencia.usrId);
                await AppPreferencia.eliminar(LlaveAppPreferencia.token);
              }

              handler.next(error);
            },
          ),
        ],
      );

  // TODO: Servicios Usuario
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

  Future<List<Usuario>> obtenerVendedores() async {
    try {
      final response = await get(
        "Usuario/obtenerVendedores",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map((e) => UsuarioMapper.obtenerEntidad(UsuarioDto.fromJson(e)))
          .toList();
    } catch (e) {
      throw Exception("Error al obtener vendedores: $e");
    }
  }

  Future<List<Usuario>> obtenerSupervisores() async {
    try {
      final response = await get(
        "Usuario/obtenerSupervisores",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map((e) => UsuarioMapper.obtenerEntidad(UsuarioDto.fromJson(e)))
          .toList();
    } catch (e) {
      throw Exception("Error al obtener supervisores: $e");
    }
  }

  // TODO: Servicios ruta
  Future<List<Ruta>> obtenerRutas() async {
    try {
      final response = await get(
        "Ruta/obtenerRutas",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map((e) => RutaMapper.obtenerEntidad(RutaDto.fromJson(e)))
          .toList();
    } catch (e) {
      throw Exception("Error al obtener rutas: $e");
    }
  }

  Future<Ruta> obtenerRutaId(int rutId) async {
    try {
      final response = await get(
        "Ruta/obtenerRutaId/$rutId",
        options: Options(responseType: ResponseType.json),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return RutaMapper.obtenerEntidad(RutaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al obtener ruta: $e");
    }
  }

  Future<Ruta> crearRuta(Ruta ruta) async {
    try {
      final dto = RutaMapper.obtenerDto(ruta);

      final body = {
        "venId": dto.venId,
        "supId": dto.supId,
        "rutNombre": dto.rutNombre,
        "rutComentario": dto.rutComentario,
        "rutFechaEjecucion": dto.rutFechaEjecucion.toIso8601String(),
      };

      final response = await post(
        "Ruta/crearRuta",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return RutaMapper.obtenerEntidad(RutaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al crear ruta: $e");
    }
  }

  Future<Ruta> editarRuta(Ruta ruta) async {
    try {
      final dto = RutaMapper.obtenerDto(ruta);

      final body = {
        "venId": dto.venId,
        "supId": dto.supId,
        "rutNombre": dto.rutNombre,
        "rutComentario": dto.rutComentario,
        "rutFechaEjecucion": dto.rutFechaEjecucion.toIso8601String(),
      };

      final response = await put(
        "Ruta/actualizarRuta/${ruta.rutId}",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return RutaMapper.obtenerEntidad(RutaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al actualizar ruta: $e");
    }
  }

  Future<bool> desactivarRuta(int rutId) async {
    try {
      final response = await put(
        "Ruta/desactivarRuta/$rutId",
        options: Options(responseType: ResponseType.json),
      );

      return response.statusCode == 200;
    } catch (e) {
      throw Exception("Error al desactivar ruta: $e");
    }
  }

  // TODO: Servicios Visita
  Future<List<Visita>> obtenerTodasVisitas() async {
    try {
      final response = await get(
        "Visita/obtenerTodasVisitas",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map((e) => VisitaMapper.obtenerEntidad(VisitaDto.fromJson(e)))
          .toList();
    } catch (e) {
      throw Exception("Error al obtener visitas: $e");
    }
  }

  Future<Visita> obtenerVisitaId(int visId) async {
    try {
      final response = await get(
        "Visita/obtenerVisitaId/$visId",
        options: Options(responseType: ResponseType.json),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return VisitaMapper.obtenerEntidad(VisitaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al obtener visita: $e");
    }
  }

  Future<List<Visita>> obtenerVisitaPorRuta(int rutId) async {
    try {
      final response = await get(
        "Visita/obtenerVisitaPorRuta/$rutId",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map((e) => VisitaMapper.obtenerEntidad(VisitaDto.fromJson(e)))
          .toList();
    } catch (e) {
      throw Exception("Error al obtener visitas por ruta: $e");
    }
  }

  Future<Visita> crearVisita(Visita visita) async {
    try {
      final dto = VisitaMapper.obtenerDto(visita);

      final body = {
        "rutId": dto.rutId,
        "dirClId": dto.dirClId,
        "visComentario": dto.visComentario,
      };

      final response = await post(
        "Visita/crearVisita",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return VisitaMapper.obtenerEntidad(VisitaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al crear visita: $e");
    }
  }

  Future<Visita> editarVisita(Visita visita) async {
    try {
      final dto = VisitaMapper.obtenerDto(visita);

      final body = {
        "rutId": dto.rutId,
        "dirClId": dto.dirClId,
        "visComentario": dto.visComentario,
      };

      final response = await put(
        "Visita/actualizarVisita/${dto.visId}",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return VisitaMapper.obtenerEntidad(VisitaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al editar visita: $e");
    }
  }

  Future<bool> desactivarVisita(int visId) async {
    try {
      final response = await put(
        "Visita/deshabilitarVisita/$visId",
        options: Options(responseType: ResponseType.json),
      );

      return response.statusCode == 200;
    } catch (e) {
      throw Exception("Error al desactivar visita: $e");
    }
  }

  // TODO: Servicios cliente
  Future<Cliente> crearCliente(Cliente cliente) async {
    try {
      final dto = ClienteMapper.obtenerDto(cliente);

      final body = {
        "clNombreCompleto": dto.clNombreCompleto,
        "clCarnetIdentidad": dto.clCarnetIdentidad,
        "clNitCliente": dto.clNitCliente,
        "clTipoCliente": dto.clTipoCliente,
        "clTelefono": dto.clTelefono,
      };

      final response = await post(
        "Cliente/crearCliente",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return ClienteMapper.obtenerEntidad(ClienteDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al crear cliente: $e");
    }
  }

  // TODO: Servicios direccion cliente
  Future<List<DireccionCliente>> obtenerDireccionClientes() async {
    try {
      final response = await get(
        "DireccionCliente/obtenerTodas",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map(
            (e) => DireccionClienteMapper.obtenerEntidad(
              DireccionClienteDto.fromJson(e),
            ),
          )
          .toList();
    } catch (e) {
      throw Exception("Error al obtener Direccion clientes: $e");
    }
  }

  // TODO: Servicios asistencia
  Future<Asistencia> crearAsistenciaEntradaDia(Asistencia asistencia) async {
    try {
      final dto = AsistenciaMapper.obtenerDto(asistencia);

      final body = {
        "venId": dto.venId,
        "asiLatitud": dto.asiLatitud,
        "asiLongitud": dto.asiLongitud,
      };

      final response = await post(
        "Asistencia/entradaDia",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return AsistenciaMapper.obtenerEntidad(AsistenciaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al crear asistencia entrada dia: $e");
    }
  }

  Future<Asistencia> crearAsistenciaSalidaDia(Asistencia asistencia) async {
    try {
      final dto = AsistenciaMapper.obtenerDto(asistencia);

      final venId = dto.venId;

      final response = await post(
        "Asistencia/salidaDia/$venId",
        data: null,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return AsistenciaMapper.obtenerEntidad(AsistenciaDto.fromJson(json));
    } catch (e) {
      throw Exception("Error al crear asistencia salida dia: $e");
    }
  }

  Future<List<Asistencia>> obtenerAsistencia() async {
    try {
      final response = await get(
        "Asistencia/obtenerAsistencia",
        options: Options(responseType: ResponseType.json),
      );

      final List<dynamic> data = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return data
          .map(
            (e) => AsistenciaMapper.obtenerEntidad(AsistenciaDto.fromJson(e)),
          )
          .toList();
    } catch (e) {
      throw Exception("Error al obtener asistencias: $e");
    }
  }

  // TODO: Servicios marcar llegada visita
  Future<MarcarLlegadaVisita> crearMarcarLlegadaVisita(
    MarcarLlegadaVisita marcarLlegadaVisita,
  ) async {
    try {
      final dto = MarcarLlegadaVisitaMapper.obtenerDto(marcarLlegadaVisita);

      final body = {
        "visId": dto.visId,
        "mlvHora": dto.mlvHora,
        "mlvLatitud": dto.mlvLatitud,
        "mlvLongitud": dto.mlvLongitud,
      };

      final response = await post(
        "MarcarLlegadaVisita/crearMarcarLlegadaVisita",
        data: body,
        options: Options(
          headers: {"Content-Type": "application/json"},
          responseType: ResponseType.json,
        ),
      );

      final json = response.data is String
          ? jsonDecode(response.data)
          : response.data;

      return MarcarLlegadaVisitaMapper.obtenerEntidad(
        MarcarLlegadaVisitaDto.fromJson(json),
      );
    } catch (e) {
      throw Exception("Error al crear marcación visita: $e");
    }
  }
}
