import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:med_geo_asistencia/features/domain/entities/export_entities.dart';

class CustomCardAsistencia extends StatelessWidget {
  final Asistencia asistencia;

  const CustomCardAsistencia({super.key, required this.asistencia});

  // Función de ayuda para formatear la hora (HH:mm)
  String _formatTime(DateTime time) {
    return DateFormat('HH:mm').format(time);
  }

  // Función de ayuda para formatear la fecha (dd/MM/yyyy)
  String _formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Verificar si la salida ocurrió en un día diferente al de la entrada
    final isSameDay =
        asistencia.asiHoraEntrada.day == asistencia.asiHoraSalida.day &&
        asistencia.asiHoraEntrada.month == asistencia.asiHoraSalida.month &&
        asistencia.asiHoraEntrada.year == asistencia.asiHoraSalida.year;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nombre del Vendedor y Fecha (Header)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    asistencia.nombreVendedor,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  _formatDate(asistencia.asiHoraEntrada),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const Divider(height: 16, thickness: 1),

            // Horas de Entrada y Salida
            _buildTimeRow(
              context,
              icon: Icons.login_rounded,
              label: 'Entrada',
              time: _formatTime(asistencia.asiHoraEntrada),
              color: Colors.green.shade700,
            ),
            const SizedBox(height: 8),
            _buildTimeRow(
              context,
              icon: Icons.logout_rounded,
              label: 'Salida',
              time: _formatTime(asistencia.asiHoraSalida),
              color: Colors.red.shade700,
              // Indicador si la salida fue al día siguiente (por turnos nocturnos)
              additionalInfo: !isSameDay ? ' (Día Siguiente)' : null,
            ),
            const SizedBox(height: 12),

            // Ubicación (Coordenadas)
            Text('Ubicación del Registro:', style: theme.textTheme.titleSmall),
            const SizedBox(height: 4),
            _buildLocationRow(
              context,
              Icons.location_on_outlined,
              'Lat: ${asistencia.asiLatitud.toStringAsFixed(4)}',
              'Lon: ${asistencia.asiLongitud.toStringAsFixed(4)}',
            ),

            // IDs de Referencia (Pequeña letra para referencia)
            const SizedBox(height: 8),
            Text(
              'ID Asistencia: ${asistencia.asiId} | ID Vendedor: ${asistencia.venId}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget auxiliar para mostrar la hora de entrada/salida
  Widget _buildTimeRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String time,
    required Color color,
    String? additionalInfo,
  }) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Text(
          '$label:',
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          time,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        if (additionalInfo != null)
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              additionalInfo,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
      ],
    );
  }

  // Widget auxiliar para mostrar las coordenadas
  Widget _buildLocationRow(
    BuildContext context,
    IconData icon,
    String latText,
    String lonText,
  ) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, color: theme.colorScheme.secondary, size: 18),
        const SizedBox(width: 8),
        Text(latText, style: theme.textTheme.bodyMedium),
        const SizedBox(width: 16),
        Text(lonText, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
