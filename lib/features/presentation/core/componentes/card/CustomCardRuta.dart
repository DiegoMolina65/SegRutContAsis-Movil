import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

class CustomCardRuta extends StatelessWidget {
  final Ruta ruta;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final bool mostrarAcciones;
  final EdgeInsetsGeometry? margin;
  final double? elevation;

  const CustomCardRuta({
    super.key,
    required this.ruta,
    this.onTap,
    this.onEdit,
    this.onDelete,
    this.mostrarAcciones = true,
    this.margin,
    this.elevation,
  });

  String _formatearFecha(DateTime fecha) {
    return DateFormat('dd/MM/yyyy').format(fecha);
  }

  String _obtenerDiaSemana(DateTime fecha) {
    return DateFormat('EEEE', 'es_ES').format(fecha);
  }

  bool _esFechaProxima(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = fecha
        .difference(DateTime(hoy.year, hoy.month, hoy.day))
        .inDays;
    return diferencia >= 0 && diferencia <= 7;
  }

  Color _obtenerColorEstado(DateTime fecha, BuildContext context) {
    final hoy = DateTime.now();
    final fechaSinHora = DateTime(fecha.year, fecha.month, fecha.day);
    final hoySinHora = DateTime(hoy.year, hoy.month, hoy.day);

    if (fechaSinHora.isBefore(hoySinHora)) {
      return Colors.grey;
    } else if (fechaSinHora.isAtSameMomentAs(hoySinHora)) {
      return Colors.green;
    } else if (_esFechaProxima(fecha)) {
      return Colors.orange;
    } else {
      return Theme.of(context).colorScheme.primary;
    }
  }

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
    final colorEstado = _obtenerColorEstado(ruta.rutFechaEjecucion, context);

    return Card(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: elevation ?? 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            // Header con color de estado
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
                  Icon(Icons.route, color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ruta.rutNombre,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                      _obtenerTextoEstado(ruta.rutFechaEjecucion),
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
                  // Fecha
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 18,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _formatearFecha(ruta.rutFechaEjecucion),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
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
                            ruta.rutFechaEjecucion,
                          ).toUpperCase(),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Vendedor
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 18,
                        color: theme.colorScheme.secondary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Vendedor',
                              style: TextStyle(
                                fontSize: 11,
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            Text(
                              ruta.nombreVendedor ?? "Cargando...",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Supervisor
                  Row(
                    children: [
                      Icon(
                        Icons.supervisor_account,
                        size: 18,
                        color: theme.colorScheme.tertiary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Supervisor',
                              style: TextStyle(
                                fontSize: 11,
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            Text(
                              ruta.nombreSupervisor ?? "Cargando...",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Comentario (si existe)
                  if (ruta.rutComentario.isNotEmpty &&
                      ruta.rutComentario.toLowerCase() != 'ninguno' &&
                      ruta.rutComentario.toLowerCase() != 'ninguno.') ...[
                    const SizedBox(height: 12),
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
                              ruta.rutComentario,
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
                ],
              ),
            ),

            // Acciones
            if (mostrarAcciones && (onEdit != null || onDelete != null))
              Container(
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
              ),
          ],
        ),
      ),
    );
  }
}
