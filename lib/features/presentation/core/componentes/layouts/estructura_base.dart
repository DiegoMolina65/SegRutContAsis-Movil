import 'package:flutter/material.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';

class EstructuraBase extends StatelessWidget {
  final Widget vista;
  final BarraSuperiorState? barraSuperior;

  const EstructuraBase({super.key, required this.vista, this.barraSuperior});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraSuperior != null
          ? BarraSuperior(estado: barraSuperior!)
          : null,
      body: vista,
    );
  }
}
