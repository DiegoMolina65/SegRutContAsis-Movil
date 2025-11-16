import 'package:flutter/material.dart';
import 'package:overlay_kit/overlay_kit.dart';

extension LoadingOverlayExtension<T> on Future {
  Future<T> ejecutarConLoading() async {
    try {
      OverlayLoadingProgress.start(widget: const IndicadorDeProgreso());
      final value = await this;
      return value;
    } finally {
      OverlayLoadingProgress.stop();
    }
  }
}

class IndicadorDeProgreso extends StatelessWidget {
  final String textoDeCargado;

  const IndicadorDeProgreso({super.key, this.textoDeCargado = ""});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(color: Colors.white),
          if (textoDeCargado.isNotEmpty) Text(textoDeCargado),
        ],
      ),
    );
  }
}
