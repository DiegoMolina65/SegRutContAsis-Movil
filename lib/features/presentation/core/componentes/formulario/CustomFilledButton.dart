import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final VoidCallback? onClick;
  final String etiqueta;
  final IconData? icono;
  final Color? colorFondo;
  final Color? colorTexto;
  final EdgeInsetsGeometry? padding;
  final Size? tamano;
  final BorderRadius? borderRadius;
  final bool cargando;
  final bool expandir;
  final double? espacioIcono;

  const CustomFilledButton({
    super.key,
    required this.etiqueta,
    this.onClick,
    this.icono,
    this.colorFondo,
    this.colorTexto,
    this.padding,
    this.tamano,
    this.borderRadius,
    this.cargando = false,
    this.expandir = false,
    this.espacioIcono = 8,
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
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                colorTexto ?? theme.colorScheme.onPrimary,
              ),
            ),
          )
        else if (icono != null) ...[
          Icon(icono, size: 20),
          SizedBox(width: espacioIcono),
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

    final boton = FilledButton(
      onPressed: cargando ? null : onClick,
      style: FilledButton.styleFrom(
        backgroundColor: colorFondo ?? theme.colorScheme.primary,
        foregroundColor: colorTexto ?? theme.colorScheme.onPrimary,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        minimumSize: tamano,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        disabledBackgroundColor: (colorFondo ?? theme.colorScheme.primary)
            .withValues(alpha: 0.6),
      ),
      child: contenido,
    );

    return expandir ? SizedBox(width: double.infinity, child: boton) : boton;
  }
}
