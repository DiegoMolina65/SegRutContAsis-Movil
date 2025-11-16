import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onClick;
  final String etiqueta;
  final IconData? icono;
  final Color? colorFondo;
  final Color? colorTexto;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final Size? tamano;
  final BorderRadius? borderRadius;
  final bool cargando;
  final bool expandir;

  const CustomElevatedButton({
    super.key,
    required this.etiqueta,
    this.onClick,
    this.icono,
    this.colorFondo,
    this.colorTexto,
    this.elevation,
    this.padding,
    this.tamano,
    this.borderRadius,
    this.cargando = false,
    this.expandir = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget contenido = Row(
      mainAxisSize: expandir ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (cargando)
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                colorTexto ?? Colors.white,
              ),
            ),
          )
        else if (icono != null) ...[
          Icon(icono, size: 20),
          const SizedBox(width: 8),
        ],
        Flexible(
          child: Text(
            etiqueta,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

    final boton = ElevatedButton(
      onPressed: cargando ? null : onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorFondo ?? theme.colorScheme.primary,
        foregroundColor: colorTexto ?? Colors.white,
        elevation: elevation ?? 2,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        minimumSize: tamano,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        disabledBackgroundColor:
            colorFondo?.withValues(alpha: 0.6) ??
            theme.colorScheme.primary.withValues(alpha: 0.6),
      ),
      child: contenido,
    );

    return expandir ? SizedBox(width: double.infinity, child: boton) : boton;
  }
}
