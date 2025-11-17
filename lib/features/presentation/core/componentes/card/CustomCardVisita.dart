import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart'; // Asumiendo que Visita está aquí

class CustomCardVisita extends StatelessWidget {
  final Visita visita;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final bool mostrarAcciones;
  final EdgeInsetsGeometry? margin;
  final double? elevation;

  const CustomCardVisita({
    super.key,
    required this.visita,
    this.onTap,
    this.onEdit,
    this.onDelete,
    this.mostrarAcciones = true,
    this.margin,
    this.elevation,
  });

  /// Formatea un [DateTime] a 'dd/MM/yyyy'.
  String _formatearFecha(DateTime fecha) {
    return DateFormat('dd/MM/yyyy').format(fecha);
  }

  /// Obtiene el día de la semana de un [DateTime] en español.
  String _obtenerDiaSemana(DateTime fecha) {
    return DateFormat('EEEE', 'es_ES').format(fecha);
  }

  /// Determina si la fecha de ejecución de la ruta es próxima (hoy a 7 días).
  bool _esFechaProxima(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = fecha
        .difference(DateTime(hoy.year, hoy.month, hoy.day))
        .inDays;
    return diferencia >= 0 && diferencia <= 7;
  }

  /// Obtiene el color para el encabezado según el estado de la fecha de ejecución.
  Color _obtenerColorEstado(DateTime fecha, BuildContext context) {
    final hoy = DateTime.now();
    final fechaSinHora = DateTime(fecha.year, fecha.month, fecha.day);
    final hoySinHora = DateTime(hoy.year, hoy.month, hoy.day);

    if (fechaSinHora.isBefore(hoySinHora)) {
      return Colors.grey; // Pasada
    } else if (fechaSinHora.isAtSameMomentAs(hoySinHora)) {
      return Colors.green; // Hoy
    } else if (_esFechaProxima(fecha)) {
      return Colors.orange; // Próxima
    } else {
      return Theme.of(context).colorScheme.primary; // Programada / Futura
    }
  }

  /// Obtiene el texto del estado según la fecha de ejecución.
  String _obtenerTextoEstado(DateTime fecha) {
    final hoy = DateTime.now();
    final fechaSinHora = DateTime(fecha.year, fecha.month, fecha.day);
    final hoySinHora = DateTime(hoy.year, hoy.month, hoy.day);

    if (fechaSinHora.isBefore(hoySinHora)) {
      return 'Pasada';
    } else if (fechaSinHora.isAtSameMomentAs(hoySinHora)) {
      return 'Hoy';
    } else if (_esFechaProxima(fecha)) {
      return 'Próxima';
    } else {
      return 'Programada';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorEstado = _obtenerColorEstado(visita.fechaEjecucionRuta, context);

    return Card(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: elevation ?? 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            // Header con color de estado (usa nombreCliente y nombreSucursalCliente)
            Container(
              decoration: BoxDecoration(
                color: colorEstado,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.business, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          visita.nombreCliente,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          visita.nombreSucursalCliente,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.8),
                            fontSize: 13,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      _obtenerTextoEstado(visita.fechaEjecucionRuta),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Contenido
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Fecha de Ejecución de Ruta y Ruta
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Fecha
                      Expanded(
                        child: _buildInfoItem(
                          icon: Icons.calendar_today,
                          iconColor: theme.colorScheme.primary,
                          label: 'Ejecución Programada',
                          value: _formatearFecha(visita.fechaEjecucionRuta),
                          theme: theme,
                          // Se añade el día de la semana como un "chip" para mantener el estilo
                          secondaryWidget: Container(
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              _obtenerDiaSemana(
                                visita.fechaEjecucionRuta,
                              ).toUpperCase(),
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Ruta
                      Expanded(
                        child: _buildInfoItem(
                          icon: Icons.route,
                          iconColor: theme.colorScheme.tertiary,
                          label: 'Ruta Asignada',
                          value: visita.nombreRuta,
                          theme: theme,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Vendedor y Zona
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Vendedor
                      Expanded(
                        child: _buildInfoItem(
                          icon: Icons.person,
                          iconColor: theme.colorScheme.secondary,
                          label: 'Vendedor',
                          value: visita.nombreVendedor,
                          theme: theme,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Zona
                      Expanded(
                        child: _buildInfoItem(
                          icon: Icons.location_city,
                          iconColor: theme.colorScheme.error,
                          label: 'Zona',
                          value: visita.nombreZona,
                          theme: theme,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Dirección
                  _buildInfoItem(
                    icon: Icons.location_on,
                    iconColor: theme.colorScheme.primary,
                    label: 'Dirección',
                    value: visita.direccion,
                    theme: theme,
                  ),
                  const SizedBox(height: 12),

                  // Comentario (si existe)
                  if (visita.visComentario.isNotEmpty &&
                      visita.visComentario.toLowerCase() != 'ninguno' &&
                      visita.visComentario.toLowerCase() != 'ninguno.')
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest
                            .withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.comment,
                            size: 16,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              visita.visComentario,
                              style: TextStyle(
                                fontSize: 13,
                                color: theme.colorScheme.onSurfaceVariant,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),

            // Acciones (manteniendo la misma estructura)
            if (mostrarAcciones && (onEdit != null || onDelete != null))
              _buildActionsRow(context, theme),
          ],
        ),
      ),
    );
  }

  /// Widget auxiliar para construir un ítem de información clave/valor.
  Widget _buildInfoItem({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
    required ThemeData theme,
    Widget? secondaryWidget,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  if (secondaryWidget != null) secondaryWidget,
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Fila de acciones (Editar y Eliminar)
  Widget _buildActionsRow(BuildContext context, ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: theme.colorScheme.outlineVariant, width: 1),
        ),
      ),
      child: Row(
        children: [
          if (onEdit != null)
            Expanded(
              child: InkWell(
                onTap: onEdit,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 18,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Editar',
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (onEdit != null && onDelete != null)
            Container(
              height: 40,
              width: 1,
              color: theme.colorScheme.outlineVariant,
            ),
          if (onDelete != null)
            Expanded(
              child: InkWell(
                onTap: onDelete,
                borderRadius: BorderRadius.only(
                  bottomRight: const Radius.circular(12),
                  bottomLeft: onEdit == null
                      ? const Radius.circular(12)
                      : Radius.zero,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete,
                        size: 18,
                        color: theme.colorScheme.error,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Eliminar',
                        style: TextStyle(
                          color: theme.colorScheme.error,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
