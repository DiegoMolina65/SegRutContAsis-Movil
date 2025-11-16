import 'package:flutter/material.dart';

class CustomSelectCustom<T> extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final T? value;
  final List<T> items;
  final String Function(T) itemLabel;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final bool enabled;
  final bool permitirNinguno;
  final String textoNinguno;
  final Widget? prefixIcon;
  final String hintTextBuscador;
  final InputBorder? border;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final bool filled;
  final double maxHeight;

  const CustomSelectCustom({
    super.key,
    required this.items,
    required this.itemLabel,
    this.labelText,
    this.hintText,
    this.value,
    this.onChanged,
    this.validator,
    this.enabled = true,
    this.permitirNinguno = true,
    this.textoNinguno = 'Ninguno',
    this.prefixIcon,
    this.hintTextBuscador = 'Buscar...',
    this.border,
    this.contentPadding,
    this.fillColor,
    this.filled = true,
    this.maxHeight = 300,
  });

  @override
  State<CustomSelectCustom<T>> createState() => _CustomSelectCustomState<T>();
}

class _CustomSelectCustomState<T> extends State<CustomSelectCustom<T>> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  List<T> _itemsFiltrados = [];
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _itemsFiltrados = widget.items;
    _searchController.addListener(_filtrarItems);
  }

  @override
  void dispose() {
    _cerrarDropdown();
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  void _filtrarItems() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _itemsFiltrados = widget.items
          .where((item) => widget.itemLabel(item).toLowerCase().contains(query))
          .toList();
    });
    _overlayEntry?.markNeedsBuild();
  }

  void _toggleDropdown() {
    if (_isOpen) {
      _cerrarDropdown();
    } else {
      _abrirDropdown();
    }
  }

  void _abrirDropdown() {
    _overlayEntry = _crearOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() => _isOpen = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocus.requestFocus();
    });
  }

  void _cerrarDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _searchController.clear();
    setState(() => _isOpen = false);
  }

  void _seleccionarItem(T? item) {
    widget.onChanged?.call(item);
    _cerrarDropdown();
  }

  OverlayEntry _crearOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: _cerrarDropdown,
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned(
              left: offset.dx,
              top: offset.dy + size.height + 4,
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0, size.height + 4),
                child: Material(
                  elevation: 8,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    constraints: BoxConstraints(maxHeight: widget.maxHeight),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Buscador
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            controller: _searchController,
                            focusNode: _searchFocus,
                            decoration: InputDecoration(
                              hintText: widget.hintTextBuscador,
                              prefixIcon: const Icon(Icons.search, size: 20),
                              suffixIcon: _searchController.text.isNotEmpty
                                  ? IconButton(
                                      icon: const Icon(Icons.clear, size: 20),
                                      onPressed: () {
                                        _searchController.clear();
                                        _searchFocus.requestFocus();
                                      },
                                    )
                                  : null,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              isDense: true,
                            ),
                          ),
                        ),
                        const Divider(height: 1),
                        // Lista de items
                        Flexible(
                          child: _itemsFiltrados.isEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    'No se encontraron resultados',
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                )
                              : ListView(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  children: [
                                    if (widget.permitirNinguno)
                                      ListTile(
                                        dense: true,
                                        leading: Icon(
                                          Icons.block,
                                          size: 20,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.error,
                                        ),
                                        title: Text(
                                          widget.textoNinguno,
                                          style: TextStyle(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.error,
                                          ),
                                        ),
                                        trailing: widget.value == null
                                            ? Icon(
                                                Icons.check,
                                                size: 20,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                              )
                                            : null,
                                        onTap: () => _seleccionarItem(null),
                                      ),
                                    ..._itemsFiltrados.map((item) {
                                      final isSelected = widget.value == item;
                                      return ListTile(
                                        dense: true,
                                        title: Text(widget.itemLabel(item)),
                                        trailing: isSelected
                                            ? Icon(
                                                Icons.check,
                                                size: 20,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                              )
                                            : null,
                                        selected: isSelected,
                                        onTap: () => _seleccionarItem(item),
                                      );
                                    }),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        onTap: widget.enabled ? _toggleDropdown : null,
        borderRadius: BorderRadius.circular(8),
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: widget.labelText,
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: Icon(
              _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              color: widget.enabled
                  ? theme.colorScheme.onSurfaceVariant
                  : theme.colorScheme.onSurface.withValues(alpha: 0.38),
            ),
            filled: widget.filled,
            fillColor:
                widget.fillColor ??
                theme.colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.3,
                ),
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
            disabledBorder:
                widget.border ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: theme.colorScheme.outline.withValues(alpha: 0.5),
                  ),
                ),
            enabled: widget.enabled,
          ),
          isEmpty: widget.value == null,
          child: Text(
            widget.value != null
                ? widget.itemLabel(widget.value as T)
                : (widget.hintText ?? ''),
            style: TextStyle(
              color: widget.value != null
                  ? theme.colorScheme.onSurface
                  : theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
