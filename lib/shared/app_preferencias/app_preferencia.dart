import 'package:shared_preferences/shared_preferences.dart';

class AppPreferencia {
  static late SharedPreferences _objPreferences;
  static Future<SharedPreferences> obtenerSharedPrefs() async {
    _objPreferences = await SharedPreferences.getInstance();
    return _objPreferences;
  }

  static Future<T?> obtenerValor<T>(String llave) async {
    final prefs = await obtenerSharedPrefs();

    switch (T) {
      case const (int):
        return prefs.getInt(llave) as T?;

      case const (String):
        return prefs.getString(llave) as T?;
      default:
        throw UnimplementedError(
            'obtenerValor no implementado para el tipo ${T.runtimeType}');
    }
  }

  static Future<bool> eliminar(String llave) async {
    final prefs = await obtenerSharedPrefs();
    return await prefs.remove(llave);
  }

  static Future<void> colocarValor<T>(String llave, T valor) async {
    final prefs = await obtenerSharedPrefs();

    switch (T) {
      case const (int):
        prefs.setInt(llave, valor as int);
        break;

      case const (String):
        prefs.setString(llave, valor as String);
        break;

      default:
        throw UnimplementedError(
            'colocarValor no implementado para el tipo ${T.runtimeType}');
    }
  }
}
