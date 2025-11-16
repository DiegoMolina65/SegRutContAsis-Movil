abstract class EventoUI {}

class EventoUIRedirigirPantalla extends EventoUI {
  final String ruta;

  EventoUIRedirigirPantalla({required this.ruta});
}

class EventoUICerrar extends EventoUI {}
