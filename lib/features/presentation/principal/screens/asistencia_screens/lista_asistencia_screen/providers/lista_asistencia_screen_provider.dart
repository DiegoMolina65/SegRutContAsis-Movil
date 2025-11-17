import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/repositories/asistencia_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/asistencia/repositories/provider_asistencia_repository.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/lista_asistencia_screen/providers/lista_asistencia_screen_state.dart';

final listaAsistenciaScreenProvider =
    StateNotifierProvider.autoDispose<
      ListaAsistenciaScreenNotifier,
      ListaAsistenciaScreenState
    >((ref) {
      final asistenciaRepositorio = ref.read(asistenciaRepositoryProvider);
      return ListaAsistenciaScreenNotifier(
        asistenciaRepositorio: asistenciaRepositorio,
      )..obtenerAsistencias();
    });

class ListaAsistenciaScreenNotifier
    extends StateNotifier<ListaAsistenciaScreenState> {
  final AsistenciaRepository asistenciaRepositorio;

  ListaAsistenciaScreenNotifier({required this.asistenciaRepositorio})
    : super(const ListaAsistenciaScreenState());

  // Método para cargar las asistencias
  Future<void> obtenerAsistencias() async {
    state = state.copyWith(isCargando: true, asistencia: [], mensajeUi: null);
    try {
      final asistencias = await asistenciaRepositorio.obtenerAsistencia();

      state = state.copyWith(asistencia: asistencias, isCargando: false);
    } catch (e, stackTrace) {
      state = state.copyWith(
        isCargando: false,
        mensajeUi: MensajeUI.errorMensaje(
          "Error al obtener asistencias: ${e.toString()}",
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
