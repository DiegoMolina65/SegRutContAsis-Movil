import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_entrada_screen/asistencia_entrada_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/asistencia_salida_screen/asistencia_salida_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/asistencia_screens/lista_asistencia_screen/lista_asistencia_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/cliente_screens/crear_cliente_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/crear_ruta_screen/crear_ruta_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/ruta_screens/lista_ruta_screen/lista_ruta_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/crear_visita_screen/crear_visita_screen.dart';
import 'package:med_geo_asistencia/features/presentation/principal/screens/visita_screens/lista_visita_screen/lista_visita_screen.dart';

class MenuNavegacion extends StatelessWidget {
  const MenuNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      child: Column(
        children: [
          // Header mejorado con gradiente
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.primary.withOpacity(0.8),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icono/Logo
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.local_hospital,
                        size: 48,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Título
                    const Text(
                      'Med Geo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Asistencia',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Menu items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                const _MenuDivider(title: 'CLIENTES'),

                _MenuItemTile(
                  icon: Icons.person_add,
                  title: 'Crear Cliente',
                  onTap: () => context.go(CrearClienteScreen.nombreRuta),
                ),

                const _MenuDivider(title: 'VISITAS'),

                _MenuItemTile(
                  icon: Icons.add_location_alt,
                  title: 'Crear Visita',
                  onTap: () => context.go(CrearVisitaScreen.nombreRuta),
                ),
                _MenuItemTile(
                  icon: Icons.list_alt,
                  title: 'Listado de Visitas',
                  onTap: () => context.go(ListaVisitaScreen.nombreRuta),
                ),

                const _MenuDivider(title: 'ASISTENCIA'),

                _MenuItemTile(
                  icon: Icons.login,
                  title: 'Marcar Entrada',
                  onTap: () => context.go(AsistenciaEntradaScreen.nombreRuta),
                ),
                _MenuItemTile(
                  icon: Icons.logout,
                  title: 'Marcar Salida',
                  onTap: () => context.go(AsistenciaSalidaScreen.nombreRuta),
                ),
                _MenuItemTile(
                  icon: Icons.list,
                  title: 'Historial de Asistencias',
                  onTap: () => context.go(ListaAsistenciaScreen.nombreRuta),
                ),

                const _MenuDivider(title: 'RUTAS'),

                _MenuItemTile(
                  icon: Icons.add_road,
                  title: 'Crear Ruta',
                  onTap: () => context.go(CrearRutaScreen.nombreRuta),
                ),
                _MenuItemTile(
                  icon: Icons.map,
                  title: 'Listado de Rutas',
                  onTap: () => context.go(ListaRutaScreen.nombreRuta),
                ),
              ],
            ),
          ),

          // Footer
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: theme.colorScheme.outlineVariant,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 8),
                Text(
                  'Versión 1.0.0',
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget personalizado para items del menú
class _MenuItemTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _MenuItemTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 20, color: theme.colorScheme.primary),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: theme.colorScheme.onSurface,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        size: 20,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      onTap: () {
        context.pop(context); // Cierra el drawer
        onTap();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}

// Widget para los divisores de sección
class _MenuDivider extends StatelessWidget {
  final String title;

  const _MenuDivider({required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: theme.colorScheme.primary,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
