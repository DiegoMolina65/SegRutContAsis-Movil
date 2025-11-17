import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/domain/repositories/asistencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/asistencia/repositories/provider_asistencia_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_salida_screen/providers/asistencia_salida_screen_state.dart';

final crearAsistenciaSalidaScreenProvider =
    StateNotifierProvider.autoDispose<
      CrearAsistenciaSalidaScreenNotifier,
      AsistenciaSalidaScreenState
    >((ref) {
      final asistenciaRepositorio = ref.read(asistenciaRepositoryProvider);
      return CrearAsistenciaSalidaScreenNotifier(
        asistenciaRepositorio: asistenciaRepositorio,
        ref: ref,
      );
    });

class CrearAsistenciaSalidaScreenNotifier
    extends StateNotifier<AsistenciaSalidaScreenState> {
  final AsistenciaRepository asistenciaRepositorio;
  final Ref ref;

  CrearAsistenciaSalidaScreenNotifier({
    required this.asistenciaRepositorio,
    required this.ref,
  }) : super(const AsistenciaSalidaScreenState());

  void onCambioVenId(int valor) {
    state = state.copyWith(venId: valor);
  }

  void onResetearFormulario() {
    state = const AsistenciaSalidaScreenState();
  }

  // Crear asistencia salida
  Future<void> onCrearSalida() async {
    try {
      if (state.venId == 0) {
        state = state.copyWith(
          mensajeUi: MensajeUI.errorMensaje(
            "Debe seleccionar un Vendedor antes de registrar la salida.",
          ),
        );
        return;
      }

      final nuevaAsistenciaSalida = Asistencia(
        asiId: 0,
        venId: state.venId,
        asiLatitud: 0.0,
        asiLongitud: 0.0,
        asiHoraEntrada: DateTime.now(),
        asiHoraSalida: DateTime.now(),
        nombreVendedor: "",
      );

      final asistenciaSalidaCreada = await asistenciaRepositorio
          .crearAsistenciaSalidaDia(nuevaAsistenciaSalida);

      state = state.copyWith(
        eventoUI: MensajeUI.okMensaje(
          "Salida registrada con éxito: ${asistenciaSalidaCreada.asiId}",
        ),
      );

      onResetearFormulario();
    } catch (e, stackTrace) {
      state = state.copyWith(
        mensajeUi: MensajeUI.errorMensaje(
          "Error al registrar salida: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
