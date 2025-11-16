import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barra_superior_state.freezed.dart';

@freezed
abstract class BarraSuperiorState with _$BarraSuperiorState {
  const BarraSuperiorState._();

  const factory BarraSuperiorState({
    String? titulo,
    // String? subtitulo,
    List<Widget>? acciones,
  }) = _BarraSuperiorState;
}
