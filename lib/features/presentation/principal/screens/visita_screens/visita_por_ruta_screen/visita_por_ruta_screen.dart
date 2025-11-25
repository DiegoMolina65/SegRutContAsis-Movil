import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:go_router/go_router.dart'; // <--- NUEVO IMPORT

import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/card/CustomCardVisita.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/mapa/custom_google_maps.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/visita_por_ruta_screen/providers/visita_por_ruta_screen_provider.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/evidencia_screens/crear_evidencia_screen/crear_evidencia_screen.dart';
import 'package:med_geo_asistencia/shared/provider/geolocator/obtener_ubicacion_actual_provider.dart';

class VisitaPorRutaScreen extends StatelessWidget {
  static const nombreRuta = '/visita-por-ruta-screen';

  final int rutId;

  const VisitaPorRutaScreen({super.key, required this.rutId});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
      barraSuperior: BarraSuperiorState(titulo: "Visitas de Ruta $rutId"),
      vista: VisitaPorRutaView(rutId: rutId),
    );
  }
}

class VisitaPorRutaView extends ConsumerWidget {
  final int rutId;
  // Radio de proximidad para el círculo, en metros
  static const double PROXIMITY_RADIUS_M = 50.0;

  const VisitaPorRutaView({super.key, required this.rutId});

  /// Genera el conjunto de marcadores a partir de la lista de visitas.
  Set<Marker> _buildMarkers(List<Visita> visitas) {
    final markers = <Marker>{};

    for (final visita in visitas) {
      final markerId = MarkerId('visita_${visita.visId}');
      final position = LatLng(visita.sucursalLatitud, visita.sucursalLongitud);

      markers.add(
        Marker(
          markerId: markerId,
          position: position,
          infoWindow: InfoWindow(
            title: visita.nombreCliente,
            snippet:
                '${visita.nombreSucursalCliente} - Zona: ${visita.nombreZona}\n${visita.direccion}',
          ),
        ),
      );
    }
    return markers;
  }

  /// Genera el conjunto de círculos de radio a partir de la lista de visitas.
  Set<Circle> _buildCircles(List<Visita> visitas) {
    final circles = <Circle>{};

    for (final visita in visitas) {
      final circleId = CircleId('radio_${visita.visId}');
      final center = LatLng(visita.sucursalLatitud, visita.sucursalLongitud);

      circles.add(
        Circle(
          circleId: circleId,
          center: center,
          radius: PROXIMITY_RADIUS_M, // Radio de 50 metros
          fillColor: Colors.blue.withOpacity(0.15),
          strokeColor: Colors.blue.withOpacity(0.5),
          strokeWidth: 2,
        ),
      );
    }
    return circles;
  }

  /// Determina la posición inicial de la cámara del mapa.
  CameraPosition _getInitialCameraPosition(List<Visita> visitas) {
    if (visitas.isNotEmpty) {
      final firstVisit = visitas.first;
      return CameraPosition(
        target: LatLng(firstVisit.sucursalLatitud, firstVisit.sucursalLongitud),
        zoom: 14.0,
      );
    }
    return const CameraPosition(target: LatLng(0, 0), zoom: 2.0);
  }

  // Mostrar Dialogo y Marcar Llegada (VALIDANDO DISTANCIA ANTES)
  void _confirmarYMarcarLlegada(
    BuildContext context,
    WidgetRef ref,
    Visita visita,
  ) async {
    try {
      // Obtener ubicación actual
      final posicion = await ref.read(obtenerPosicionActualProvider.future);

      final double distanceInMeters = Geolocator.distanceBetween(
        posicion.latitude,
        posicion.longitude,
        visita.sucursalLatitud,
        visita.sucursalLongitud,
      );

      // Si está fuera del radio NO ABRIR EL DIÁLOGO
      if (distanceInMeters > PROXIMITY_RADIUS_M) {
        DialogoMensajeUI(
          mensajeUI: MensajeUI.errorMensaje(
            "Usted está a ${distanceInMeters.toStringAsFixed(2)} metros.\n"
            "La marcación solo está permitida dentro de "
            "${PROXIMITY_RADIUS_M.toStringAsFixed(0)} metros de la sucursal.",
          ),
        ).show(context);
        return;
      }

      // si está dentro del radio → recién ahí mostrar el diálogo
      final bool? resultado = await showDialog<bool>(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: const Text('Confirmación de Marcación'),
            content: Text(
              'Debe registrar la evidencia para marcar la llegada a '
              '${visita.nombreCliente}. ¿Desea continuar?',
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: const Text('Cancelar'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                child: const Text('Confirmar'),
              ),
            ],
          );
        },
      );

      if (resultado == true) {
        context.push('${CrearEvidenciaScreen.nombreRuta}/${visita.visId}');
      }
    } catch (e) {
      DialogoMensajeUI(
        mensajeUI: MensajeUI.errorMensaje(
          "Error al obtener su ubicación actual: $e",
        ),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(visitaPorRutaScreenProvider(rutId));
    final notificador = ref.read(visitaPorRutaScreenProvider(rutId).notifier);

    ref.listen(visitaPorRutaScreenProvider(rutId).select((s) => s.mensajeUi), (
      _,
      next,
    ) {
      if (next != null) DialogoMensajeUI(mensajeUI: next).show(context);
    });

    if (estado.isCargando && estado.visitas.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (estado.visitas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person_pin_circle, size: 60, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              "No hay visitas asignadas a esta ruta.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton.icon(
                onPressed: notificador.obtenerVisitas,
                icon: const Icon(Icons.refresh),
                label: const Text("Recargar Visitas"),
              ),
            ),
          ],
        ),
      );
    }

    // Lógica para el Mapa
    final markers = _buildMarkers(estado.visitas);
    final circles = _buildCircles(estado.visitas);
    final initialPosition = _getInitialCameraPosition(estado.visitas);

    return Column(
      children: [
        // Mapa (Altura fija para un buen UX móvil)
        SizedBox(
          height: 300,
          child: CustomGoogleMaps(
            posicionCamaraInicial: initialPosition,
            markers: markers,
            circles: circles,
            usarExpanded: false,
            deshabilitarGestos: false,
          ),
        ),

        // Separador visual
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            'Visitas Programadas (${estado.visitas.length})',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),

        // Listado de Visitas
        Expanded(
          child: RefreshIndicator(
            onRefresh: notificador.obtenerVisitas,
            child: ListView.builder(
              itemCount: estado.visitas.length,
              itemBuilder: (context, index) {
                final visita = estado.visitas[index];
                return CustomCardVisita(
                  visita: visita,
                  onTap: () {
                    _confirmarYMarcarLlegada(context, ref, visita);
                  },
                  mostrarAcciones: false,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
