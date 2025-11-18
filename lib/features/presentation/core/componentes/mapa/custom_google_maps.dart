import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMaps extends StatefulWidget {
  final bool usarExpanded;
  final CameraPosition posicionCamaraInicial;
  final Set<Marker> markers;
  final Set<Circle> circles;
  final void Function(GoogleMapController controladorMapa)? onMapaCreado;
  final bool mostrarUbicacionActual;
  final bool deshabilitarGestos;
  const CustomGoogleMaps({
    super.key,
    this.usarExpanded = true,
    required this.posicionCamaraInicial,
    this.markers = const <Marker>{},
    this.circles = const <Circle>{},
    this.onMapaCreado,
    this.mostrarUbicacionActual = false,
    this.deshabilitarGestos = false,
  });

  @override
  State<CustomGoogleMaps> createState() => _CustomGoogleMapsState();
}

class _CustomGoogleMapsState extends State<CustomGoogleMaps> {
  @override
  Widget build(BuildContext context) {
    final mapa = GoogleMap(
      initialCameraPosition: widget.posicionCamaraInicial,
      myLocationEnabled: widget.mostrarUbicacionActual,
      myLocationButtonEnabled: widget.mostrarUbicacionActual,
      markers: widget.markers,
      circles: widget.circles,
      rotateGesturesEnabled: !widget.deshabilitarGestos,
      scrollGesturesEnabled: !widget.deshabilitarGestos,
      tiltGesturesEnabled: !widget.deshabilitarGestos,
      zoomControlsEnabled: !widget.deshabilitarGestos,
      zoomGesturesEnabled: !widget.deshabilitarGestos,
      gestureRecognizers: {
        Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer()),
      },
      onMapCreated: widget.onMapaCreado,
    );
    return widget.usarExpanded ? Expanded(child: mapa) : mapa;
  }
}
