import 'package:workmanager/workmanager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const syncTask = "syncTask";

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, input) async {
    try {
      final container = ProviderContainer();
      /// Enviando
      print("Debug Sincronizador ${DateTime.now().toIso8601String()}");

      container.dispose();
      return true;
    } catch (ex, stacktrace) {
      return false;
    }

  });
}
