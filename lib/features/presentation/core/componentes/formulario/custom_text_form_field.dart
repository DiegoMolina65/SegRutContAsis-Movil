import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool ofuscar;
  final bool readOnly;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? prefixText;
  final String? suffixText;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextStyle? style;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final bool filled;
  final bool requerido;
  final String? mensajeValidacion;
  final String? initialValue;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.initialValue,
    this.labelText,
    this.helperText,
    this.errorText,
    this.textInputAction,
    this.keyboardType,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
    this.ofuscar = false,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixText,
    this.suffixText,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.autovalidateMode,
    this.style,
    this.border,
    this.contentPadding,
    this.fillColor,
    this.filled = true,
    this.requerido = false,
    this.mensajeValidacion,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _ocultarTexto;

  @override
  void initState() {
    super.initState();
    _ocultarTexto = widget.ofuscar;
  }

  @override
  void didUpdateWidget(CustomTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.ofuscar != oldWidget.ofuscar) {
      _ocultarTexto = widget.ofuscar;
    }
  }

  Widget? _buildSuffixIcon() {
    if (!widget.ofuscar) {
      return widget.suffixIcon;
    }

    return IconButton(
      icon: Icon(
        _ocultarTexto ? Icons.visibility_off : Icons.visibility,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      onPressed: () {
        setState(() {
          _ocultarTexto = !_ocultarTexto;
        });
      },
      tooltip: _ocultarTexto ? 'Mostrar contraseña' : 'Ocultar contraseña',
    );
  }

  String? _validarCampo(String? value) {
    if (widget.validator != null) {
      return widget.validator!(value);
    }

    if (widget.requerido) {
      if (value == null || value.trim().isEmpty) {
        return widget.mensajeValidacion ?? 'Este campo es requerido';
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      controller: widget.controller,
      initialValue: widget.initialValue,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: _validarCampo,
      onSaved: widget.onSaved,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      obscureText: _ocultarTexto,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      maxLines: widget.ofuscar ? 1 : widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      textCapitalization: widget.textCapitalization,
      inputFormatters: widget.inputFormatters,
      autovalidateMode: widget.autovalidateMode,
      style: widget.style,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: _buildSuffixIcon(),
        prefixText: widget.prefixText,
        suffixText: widget.suffixText,
        filled: widget.filled,
        fillColor:
            widget.fillColor ??
            theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        contentPadding:
            widget.contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: theme.colorScheme.outline),
            ),
        enabledBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: theme.colorScheme.outline),
            ),
        focusedBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
        errorBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: theme.colorScheme.error),
            ),
        focusedErrorBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: theme.colorScheme.error, width: 2),
            ),
        disabledBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.5),
              ),
            ),
      ),
    );
  }
}
