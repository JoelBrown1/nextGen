import 'dart:math';

import 'package:flutter/material.dart';

class UiScaler extends StatelessWidget {
  const UiScaler({
    super.key,
    required this.child,
    required this.alignment,
    this.referenceHeight = 1080,
  });

  final Widget child;
  final Alignment alignment;
  final int referenceHeight;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double scale = min(screenSize.height / referenceHeight, 1);

    return Transform.scale(
      scale: scale,
      alignment: alignment,
      child: child,
    );
  }
}
