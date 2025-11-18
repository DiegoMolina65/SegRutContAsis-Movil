import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTexFormFiledComentarios extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool readOnly;
  final bool enabled;
  final int minLines;
  final int maxLines;
  final int? maxLength;
  final bool mostrarContador;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final TextStyle? style;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final bool filled;
  final TextInputAction? textInputAction;
  final bool requerido;
  final String? mensajeValidacion;
  final String? initialValue;

  const CustomTexFormFiledComentarios({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.validator,
    this.onSaved,
    this.readOnly = false,
    this.enabled = true,
    this.minLines = 4,
    this.maxLines = 8,
    this.maxLength,
    this.mostrarContador = true,
    this.textCapitalization = TextCapitalization.sentences,
    this.inputFormatters,
    this.autovalidateMode,
    this.style,
    this.border,
    this.contentPadding,
    this.fillColor,
    this.filled = true,
    this.textInputAction,
    this.requerido = false,
    this.mensajeValidacion,
    this.initialValue,
  });

  @override
  State<CustomTexFormFiledComentarios> createState() =>
      _CustomTexFormFiledComentariosState();
}

class _CustomTexFormFiledComentariosState
    extends State<CustomTexFormFiledComentarios> {
  late TextEditingController _controller;
  int _caracteresActuales = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);

    _caracteresActuales = _controller.text.length;
    _controller.addListener(_actualizarContador);
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _actualizarContador() {
    if (mounted) {
      setState(() {
        _caracteresActuales = _controller.text.length;
      });
    }
  }

  String? _getHelperText() {
    if (!widget.mostrarContador || widget.maxLength == null) {
      return widget.helperText;
    }

    final contador = '$_caracteresActuales / ${widget.maxLength}';

    if (widget.helperText != null) {
      return '${widget.helperText} • $contador';
    }

    return contador;
  }

  Color _getContadorColor(BuildContext context) {
    if (widget.maxLength == null) {
      return Theme.of(context).colorScheme.onSurfaceVariant;
    }

    final porcentaje = _caracteresActuales / widget.maxLength!;

    if (porcentaje >= 1.0) {
      return Theme.of(context).colorScheme.error;
    } else if (porcentaje >= 0.9) {
      return Colors.orange;
    }

    return Theme.of(context).colorScheme.onSurfaceVariant;
  }

  String? _validarCampo(String? value) {
    // Si hay un validator personalizado, úsalo
    if (widget.validator != null) {
      return widget.validator!(value);
    }

    // Si el campo es requerido, valida que no esté vacío
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
      controller: _controller,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      validator: _validarCampo,
      onSaved: widget.onSaved,
      textInputAction: widget.textInputAction ?? TextInputAction.newline,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      textCapitalization: widget.textCapitalization,
      inputFormatters: widget.inputFormatters,
      autovalidateMode: widget.autovalidateMode,
      style: widget.style,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Escribe tu comentario aquí...',
        labelText: widget.labelText,
        helperText: _getHelperText(),
        helperStyle: TextStyle(color: _getContadorColor(context)),
        errorText: widget.errorText,
        filled: widget.filled,
        fillColor:
            widget.fillColor ??
            theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        contentPadding:
            widget.contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        alignLabelWithHint: true,
        counterText: '',
        border:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: theme.colorScheme.outline),
            ),
        enabledBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: theme.colorScheme.outline),
            ),
        focusedBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
        errorBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: theme.colorScheme.error),
            ),
        focusedErrorBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: theme.colorScheme.error, width: 2),
            ),
        disabledBorder:
            widget.border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.5),
              ),
            ),
      ),
    );
  }
}
