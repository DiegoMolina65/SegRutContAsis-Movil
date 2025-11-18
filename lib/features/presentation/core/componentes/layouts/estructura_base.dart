import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/layouts/barra_superior_state.dart';
import 'package:med_geo_asistencia/features/presentation/core/componentes/menu_navegacion/menu_navegacion.dart';
import 'package:med_geo_asistencia/features/presentation/login/screens/login_screen.dart';

class EstructuraBase extends StatelessWidget {
  final Widget vista;
  final BarraSuperiorState? barraSuperior;

  const EstructuraBase({super.key, required this.vista, this.barraSuperior});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final showMenu = location != LoginScreen.nombreRuta;

    return Scaffold(
      appBar: barraSuperior != null
          ? BarraSuperior(estado: barraSuperior!)
          : null,
      drawer: showMenu ? const MenuNavegacion() : null,
      body: vista,
    );
  }
}
