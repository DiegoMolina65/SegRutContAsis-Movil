import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/connectivity_checker/connectivity_checker.dart';
import 'package:med_geo_asistencia/features/infraestructure/servicios/dio_servicio/extensiones/dio_options_extensions.dart';

class DioServicio {
  final String urlBase;
  late final Dio dio;
  ConnectivityChecker connectivityChecker = ConnectivityChecker();

  DioServicio({
    required this.urlBase,
    bool confiarEnTodosLosCertificados = false,
    List<Interceptor>? interceptores,
  }) {
    dio = Dio(BaseOptions(baseUrl: urlBase));

    if (confiarEnTodosLosCertificados) {
      _configureTrustedCertificates();
    }

    // Procesar interceptores
    if (interceptores != null) {
      dio.interceptors.addAll(interceptores);
    }
  }

  void _configureTrustedCertificates() {
    // dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options, handler) {
    //     _setCommonOptions(options);
    //     handler.next(options);
    //   },
    // ));

    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      // Don't trust any certificate just because their root cert is trusted.
      final HttpClient client = HttpClient()
        ..badCertificateCallback =
        ((X509Certificate cert, String host, int port) {
          /// Aceptar todos los certificados
          return true;
        });

      /// Esto sería equivalente a tu HostnameVerifier = true
      client.findProxy = (url) => 'DIRECT';
      // final HttpClient client =
      //     HttpClient(context: SecurityContext(withTrustedRoots: true));
      // You can test the intermediate / root cert here. We just ignore it.
      // client.badCertificateCallback =
      //     ((X509Certificate cert, String host, int port) => true);
      return client;
    };
  }

  // void _setCommonOptions(RequestOptions options) {
  //   options.validateStatus = (_) => true;
  //   options.onReceiveProgress = (received, total) {};
  //   options.onSendProgress = (sent, total) {};
  //   options.headers['Connection'] = 'keep-alive';
  // }

  Future<Response<T>> _handleRequest<T>(
      Future<Response<T>> Function() request) async {
    try {
      if (!await connectivityChecker.hasConection()) {
        throw Exception(
            'Oops, parece que no hay conexión a Internet. Por favor, verifica tu conexión y vuelve a intentarlo.');
      }
      final response = await request();
      return response;
    } on DioException catch (e) {
      if (kDebugMode) {
        print("Error DioException: $e");
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception(
            'Error de tiempo de espera prolongado. Revisa tu conexión a internet.');
      } else if (e.type == DioExceptionType.connectionError) {
        throw Exception(
            'Error en la conexion. Por favor, verifica tener una conexión a internet estable.');
      } else if (e.type == DioExceptionType.badResponse) {
        final responseException = e.response;
        if (responseException?.statusCode == 401) {
          throw Exception(
              "Error 401: ${responseException?.statusMessage ?? ""}");
        } /*else if (responseException != null && responseException.data is Map) {
          final exception =
              ResponseApiExterno.fromJson(responseException.data, () {});
          if (kDebugMode) {
            print(
                'Debug Error _handleRequest DioClientService: ${exception.error?.diagnosticMessage}');
          }
          throw CustomError(
            exception.error?.clientMessage ?? "Ocurrio un error",
            serviceStackTrace: exception.error?.serviceStackTrace,
          );
        }*/
      } else if (e.type == DioExceptionType.unknown) {
        if (e.error is HandshakeException) {
          // HandshakeException errorHandShake = ;
          throw Exception('''Hubo un problema con el certificado del servidor.
              ${e.error}''');
        }
      }
      rethrow;
    } catch (e) {
      if (kDebugMode) {
        print("Debug Error DioClientService _handleRequest: $e");
      }
      rethrow;
    }
  }

  Future<Response<T>> post<T>(String url,
      {Options? options, Object? data}) async {
    final response = await _handleRequest(() async {
      if (kDebugMode) {
        try {
          print(
              'Debug post Dio Client Service: url: ${dio.options.baseUrl + url}');
          print(
              'Debug post Dio Client Service: options: ${options?.getString()}');
          print('Debug post Dio Client Service: data: ${jsonEncode(data)}');
        } catch (ex) {
          print("Debug Error print datos post: $ex");
        }
      }
      final response = await dio.post<T>(url, options: options, data: data);
      return response;
    });
    return response;
  }

  Future<Response<T>> put<T>(String url,
      {Options? options, Object? data}) async {
    final response = await _handleRequest(() async {
      if (kDebugMode) {
        try {
          print(
              'Debug put Dio Client Service: url: ${dio.options.baseUrl + url}');
          print(
              'Debug put Dio Client Service: options: ${options?.getString()}');
          print('Debug put Dio Client Service: data: ${jsonEncode(data)}');
        } catch (ex) {
          print("Debug Error print datos put: $ex");
        }
      }

      final response = await dio.put<T>(url, options: options, data: data);
      return response;
    });
    return response;
  }

  Future<Response<T>> get<T>(String url,
      {Options? options, Object? data}) async {
    final response = await _handleRequest(() async {
      if (kDebugMode) {
        try {
          print(
              'Debug get Dio Client Service: url: ${dio.options.baseUrl + url}');
          print(
              'Debug get Dio Client Service: options: ${options?.getString()}');
          print('Debug get Dio Client Service: data: ${jsonEncode(data)}');
        } catch (ex) {
          print("Debug Error print datos get: $ex");
        }
      }

      final response = await dio.get<T>(url, options: options, data: data);
      return response;
    });
    return response;
  }

  setTimeout(Duration timeout) {
    dio.options = dio.options.copyWith(
        connectTimeout: timeout, receiveTimeout: timeout, sendTimeout: timeout);
  }
}
