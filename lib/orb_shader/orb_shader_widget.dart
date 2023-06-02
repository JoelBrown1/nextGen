import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

import '../assets.dart';
import '../common/reactive_widget.dart';
import 'orb_shader_config.dart';
import 'orb_shader_painter.dart';

class OrbShaderWidget extends StatefulWidget {
  const OrbShaderWidget({
    super.key,
    required this.config,
    required this.mousePos,
    required this.minEnergy,
    this.onUpdate,
  });

  final OrbShaderConfig config;
  final Offset mousePos;
  final double minEnergy;
  final void Function(double energy)? onUpdate;

  @override
  State<OrbShaderWidget> createState() => _OrbShaderWidgetState();
}

class _OrbShaderWidgetState extends State<OrbShaderWidget>
    with SingleTickerProviderStateMixin {
  final _heartbeatSequence = TweenSequence([
    TweenSequenceItem(tween: ConstantTween(0), weight: 40),
    TweenSequenceItem(
        tween: Tween(begin: 0, end: 1).chain(CurveTween(
          curve: Curves.easeInOutCubic,
        )),
        weight: 8),
    TweenSequenceItem(tween: Tween(begin:1, end:.2).chain(CurveTween(curve: Curves.easeInOutCubic)), weight: 12),
    TweenSequenceItem(tween: Tween(begin: .2, end: .8).chain(CurveTween), weight: weight)
  ]);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
