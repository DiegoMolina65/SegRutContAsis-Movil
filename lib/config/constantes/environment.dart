import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:med_geo_asistencia/config/constantes/llave_app_preferencia.dart';
import 'package:med_geo_asistencia/shared/app_preferencias/app_preferencia.dart';

class Environment {
  static String urlApi = '';

  static Future<void> initEnvironment() async {
    await dotenv.load(fileName: '.env');

    final urlApiCacheada =
        await AppPreferencia.obtenerValor<String>(LlaveAppPreferencia.apiUrl);

    urlApi = (urlApiCacheada != null && urlApiCacheada.isNotEmpty)
        ? urlApiCacheada
        : dotenv.env['API_URL'] ??
            'No está configurado la Url del servicio Api';

  }
}
