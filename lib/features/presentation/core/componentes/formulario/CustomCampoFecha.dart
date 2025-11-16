import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCampoFecha extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final DateTime? value;
  final void Function(DateTime?)? onChanged;
  final String? Function(DateTime?)? validator;
  final bool enabled;
  final bool permitirFechasPasadas;
  final DateTime? fechaMinima;
  final DateTime? fechaMaxima;
  final DateTime? fechaInicial;
  final Widget? prefixIcon;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final bool filled;
  final String formato;
  final DatePickerMode modoInicial;

  const CustomCampoFecha({
    super.key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.value,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.permitirFechasPasadas = true,
    this.fechaMinima,
    this.fechaMaxima,
    this.fechaInicial,
    this.prefixIcon,
    this.border,
    this.contentPadding,
    this.fillColor,
    this.filled = true,
    this.formato = 'dd/MM/yyyy',
    this.modoInicial = DatePickerMode.day,
  });

  DateTime _obtenerFechaMinima() {
    if (fechaMinima != null) return fechaMinima!;
    if (!permitirFechasPasadas) {
      final hoy = DateTime.now();
      return DateTime(hoy.year, hoy.month, hoy.day);
    }
    return DateTime(1900);
  }

  DateTime _obtenerFechaMaxima() {
    if (fechaMaxima != null) return fechaMaxima!;
    return DateTime(2100);
  }

  DateTime _obtenerFechaInicial() {
    if (value != null) return value!;
    if (fechaInicial != null) return fechaInicial!;

    final hoy = DateTime.now();
    final minima = _obtenerFechaMinima();
    final maxima = _obtenerFechaMaxima();

    if (hoy.isAfter(minima) && hoy.isBefore(maxima)) {
      return hoy;
    }

    return minima;
  }

  String _formatearFecha(DateTime fecha) {
    try {
      return DateFormat(formato).format(fecha);
    } catch (e) {
      return DateFormat('dd/MM/yyyy').format(fecha);
    }
  }

  Future<void> _seleccionarFecha(BuildContext context) async {
    if (!enabled) return;

    final fechaSeleccionada = await showDatePicker(
      context: context,
      initialDate: _obtenerFechaInicial(),
      firstDate: _obtenerFechaMinima(),
      lastDate: _obtenerFechaMaxima(),
      initialDatePickerMode: modoInicial,
      locale: const Locale('es', 'ES'),
      helpText: labelText ?? 'Seleccionar fecha',
      cancelText: 'Cancelar',
      confirmText: 'Aceptar',
      builder: (context, child) {
        return Theme(
          data: Theme.of(
            context,
          ).copyWith(colorScheme: Theme.of(context).colorScheme),
          child: child!,
        );
      },
    );

    if (fechaSeleccionada != null) {
      onChanged?.call(fechaSeleccionada);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textoMostrado = value != null
        ? _formatearFecha(value!)
        : (hintText ?? 'Seleccionar fecha');

    return InkWell(
      onTap: () => _seleccionarFecha(context),
      borderRadius: BorderRadius.circular(8),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          helperText: helperText,
          errorText: errorText,
          prefixIcon: prefixIcon ?? const Icon(Icons.calendar_today),
          suffixIcon: value != null && enabled
              ? IconButton(
                  icon: const Icon(Icons.clear, size: 20),
                  onPressed: () => onChanged?.call(null),
                  tooltip: 'Limpiar',
                )
              : null,
          filled: filled,
          fillColor:
              fillColor ??
              theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          contentPadding:
              contentPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border:
              border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: theme.colorScheme.outline),
              ),
          enabledBorder:
              border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: theme.colorScheme.outline),
              ),
          focusedBorder:
              border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2,
                ),
              ),
          errorBorder:
              border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: theme.colorScheme.error),
              ),
          disabledBorder:
              border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: theme.colorScheme.outline.withValues(alpha: 0.5),
                ),
              ),
          enabled: enabled,
        ),
        isEmpty: value == null,
        child: Text(
          textoMostrado,
          style: TextStyle(
            color: value != null
                ? theme.colorScheme.onSurface
                : theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
