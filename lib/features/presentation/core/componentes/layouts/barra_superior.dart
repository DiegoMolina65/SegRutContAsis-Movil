import 'package:flutter/material.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';

class BarraSuperior extends StatelessWidget implements PreferredSizeWidget {
  final BarraSuperiorState estado;

  const BarraSuperior({super.key, required this.estado});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: estado.titulo != null ? Text(estado.titulo!) : null,
      // backgroundColor: Colors.indigo,
      actions: estado.acciones,
    );
  }
}
