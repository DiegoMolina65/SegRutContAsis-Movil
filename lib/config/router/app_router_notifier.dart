import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/autenticacion_estatus.dart';
import 'package:med_geo_asistencia/features/presentation/login/provider/auth_provider.dart';

final goRouterNotifierProvider = Provider((ref) {
  final authNotifier = ref.read(authProvider.notifier);
  return GoRouterNotifier(authNotifier);
});

class GoRouterNotifier extends ChangeNotifier {
  final AutenticacionNotifier _authNotifier;

  AutenticacionEstatus _authStatus = AutenticacionEstatus.verificando;

  GoRouterNotifier(this._authNotifier) {
    _authNotifier.addListener((state) {
      authStatus = state.autenticacionEstatus;
    });
  }

  AutenticacionEstatus get authStatus => _authStatus;

  set authStatus(AutenticacionEstatus value) {
    _authStatus = value;
    notifyListeners();
  }
}
