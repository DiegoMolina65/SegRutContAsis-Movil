import 'package:workmanager/workmanager.dart';
import '../workers/worker_sincronizador.dart';

class WorkManagerInicializador {
  static Future<void> init() async {
    await Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: true,
    );

    await Workmanager().registerPeriodicTask(
      "sync_task_01",
      syncTask,
      frequency: Duration(minutes: 15), // mínimo permitido por Android
      initialDelay: Duration(minutes: 1),
    );
  }
}
