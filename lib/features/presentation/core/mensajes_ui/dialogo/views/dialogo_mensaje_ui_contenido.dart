import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

class DialogoMensajeUIContenido extends StatelessWidget {
  final MensajeUI mensajeUI;

  const DialogoMensajeUIContenido({super.key, required this.mensajeUI});

  @override
  Widget build(BuildContext context) {
    final descripcion = mensajeUI.mensaje.replaceFirst('Exception:', '');
    final stackTrace = mensajeUI.when(
      errorMensaje: (mensaje, titulo, stackTrace, datosExtras) => "$stackTrace",
      alertaMensaje: (mensaje, titulo, datosExtras) => null,
      okMensaje: (mensaje, titulo, datosExtras) => null,
      infoMensaje: (mensaje, titulo, datosExtras) => null,
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(descripcion),
          if (kDebugMode && stackTrace != null && stackTrace.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(stackTrace),
            ),
        ],
      ),
    );
  }
}
