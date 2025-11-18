import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_geo_asistencia/features/domain/entities/marcar_llegada_visita/marcar_llegada_visita.dart';
import 'package:med_geo_asistencia/features/domain/repositories/marcar_llegada_visita_repository.dart';
import 'package:med_geo_asistencia/features/infraestructure/contratos/marcar_llegada_visita/repositories/provider_marcar_llegada_visita_repository_impl.dart';

final marcarLlegadaVisitaUseCaseProvider = Provider<MarcarLlegadaVisitaUseCase>(
  (ref) {
    return MarcarLlegadaVisitaUseCase(
      repository: ref.watch(marcarLlegadaVisitaRepositoryProvider),
    );
  },
);

class MarcarLlegadaVisitaUseCase {
  final MarcarLlegadaVisitaRepository repository;

  MarcarLlegadaVisitaUseCase({required this.repository});

  /// Crea un nuevo registro de marcación de llegada para una visita.
  Future<MarcarLlegadaVisita> call(MarcarLlegadaVisita marcarLlegadaVisita) {
    return repository.crearMarcarLlegadaVisita(marcarLlegadaVisita);
  }
}
