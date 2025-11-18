import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/formulario/custom_filled_button.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/mensaje_ui.dart';
import 'package:med_geo_asistencia/features/presentation/core/mensajes_ui/dialogo/views/dialogo_mensaje_ui_titulo.dart';

import 'dialogo_mensaje_ui_contenido.dart';

class DialogoMensajeUI extends StatelessWidget {
  final MensajeUI mensajeUI;

  const DialogoMensajeUI({super.key, required this.mensajeUI});

  @override
  Widget build(BuildContext context) {
    return DialogoMensajeUIView(mensajeUI: mensajeUI);
  }

  void show(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (BuildContext context) {
        return this;
      },
    );
  }
}

class DialogoMensajeUIView extends StatelessWidget {
  final MensajeUI mensajeUI;

  const DialogoMensajeUIView({super.key, required this.mensajeUI});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      // icon: Container(
      //     child: Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         _obtenerIcono(),
      //         if (tipo == EnumDialogConfirmation.alert && cancelable)
      //           Positioned(
      //             top: 0,
      //             right: 0,
      //             child: CloseButton(
      //               style: ButtonStyle(
      //
      //                 // backgroundColor:
      //                 //     MaterialStateProperty.all<Color>(Colors.blue),
      //                   padding: WidgetStateProperty.all(const EdgeInsets.all(0))),
      //               onPressed: () {
      //                 Navigator.of(context).pop();
      //               },
      //             ),
      //           ),
      //       ],
      //     )),
      // iconColor: Colors.grey,
      title: DialogoMensajeUITitulo(mensajeUI: mensajeUI),
      content: DialogoMensajeUIContenido(mensajeUI: mensajeUI),
      actionsOverflowButtonSpacing: 0,
      actionsOverflowDirection: VerticalDirection.down,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actionsPadding: const EdgeInsets.symmetric(vertical: 8),
      actions: [
        CustomFilledButton(onClick: () => context.pop(), etiqueta: "Aceptar"),
      ],
    );
  }
}
