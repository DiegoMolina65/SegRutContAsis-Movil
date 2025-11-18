import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String texto;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;

  const CustomText(
    this.texto, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.decoration,
    this.letterSpacing,
    this.wordSpacing,
    this.height,
  });

  // Constructores nombrados para casos comunes
  const CustomText.titulo(
    this.texto, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       fontSize = null,
       fontWeight = FontWeight.bold,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  const CustomText.subtitulo(
    this.texto, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       fontSize = null,
       fontWeight = FontWeight.w600,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  const CustomText.etiqueta(
    this.texto, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       fontSize = null,
       fontWeight = FontWeight.w500,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  const CustomText.cuerpo(
    this.texto, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       fontSize = null,
       fontWeight = FontWeight.normal,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  const CustomText.pequeno(
    this.texto, {
    super.key,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       fontSize = 12,
       fontWeight = FontWeight.normal,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  const CustomText.error(
    this.texto, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,
  }) : style = null,
       color = null,
       fontSize = null,
       fontWeight = FontWeight.w500,
       fontStyle = null,
       decoration = null,
       letterSpacing = null,
       wordSpacing = null,
       height = null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Si se proporciona un estilo completo, úsalo directamente
    if (style != null) {
      return Text(
        texto,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      );
    }

    // Determinar el estilo base según el constructor usado
    TextStyle baseStyle;
    if (fontWeight == FontWeight.bold) {
      baseStyle = theme.textTheme.titleLarge!;
    } else if (fontWeight == FontWeight.w600) {
      baseStyle = theme.textTheme.titleMedium!;
    } else if (fontWeight == FontWeight.w500) {
      baseStyle = theme.textTheme.bodyMedium!;
    } else if (fontSize == 12) {
      baseStyle = theme.textTheme.bodySmall!;
    } else {
      baseStyle = theme.textTheme.bodyMedium!;
    }

    // Aplicar personalizaciones
    final customStyle = baseStyle.copyWith(
      color:
          color ??
          (fontWeight == FontWeight.w500 && fontSize == null
              ? theme.colorScheme.error
              : null),
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      decoration: decoration,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      height: height,
    );

    return Text(
      texto,
      style: customStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
