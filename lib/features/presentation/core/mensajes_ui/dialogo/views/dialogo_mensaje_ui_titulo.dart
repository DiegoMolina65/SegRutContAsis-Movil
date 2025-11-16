import 'package:flutter/material.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';

class DialogoMensajeUITitulo extends StatelessWidget {
  final MensajeUI mensajeUI;

  const DialogoMensajeUITitulo({
    super.key,
    required this.mensajeUI,
  });

  @override
  Widget build(BuildContext context) {
    String textoTitulo = mensajeUI.titulo ?? "";
    if (textoTitulo.isEmpty) {
      switch (mensajeUI) {
        case ErrorMensajeUI _:
          textoTitulo = "ERROR";
          break;
        case AlertaMensajeUI _:
          textoTitulo = "ALERTA";
          break;
        case OkMensajeUI _:
          textoTitulo = "";
          break;
      }
    }
    return Text(textoTitulo);
  }
}
