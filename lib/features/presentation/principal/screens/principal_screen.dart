import 'package:flutter/material.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/estructura_base.dart';

class PrincipalScreen extends StatelessWidget {
  static const String nombreRuta = "/principal-screen";
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PrincipalView();
  }
}

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return EstructuraBase(
        barraSuperior: BarraSuperiorState(titulo: "Med-GeoAsistencia"),
        vista: const Placeholder());
  }
}

