import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart';

import './title_scene_ui.dart';

class TitleScreen extends StatefulWidget {
  const TitleScreen({super.key});

  @override
  State<TitleScreen> createState() => _TitleScreenState();
}

class _TitleScreenState extends State<TitleScreen> {
  Color get _emitColor =>
      AppColors.emitColors[_difficultyOverride ?? _difficulty];
  Color get _orbColor =>
      AppColors.orbColors[_difficultyOverride ?? _difficulty];

  // current selected difficulty
  int _difficulty = 0;
  // current focused difficulty
  int? _difficultyOverride;

  void _handleDifficultyPressed(int value) {
    print('onPressed - what is the value: ${value}');
    setState(() {
      _difficulty = value;
    });
  }

  void _handleDifficultyFocused(int? value) {
    setState(() {
      _difficultyOverride = value;
    });
  }

  final _finalReceivedLightAmt = .7;
  final _finalEmitLightAmt = .5;

  @override
  Widget build(BuildContext context) {
    final orbColor = AppColors.orbColors[_difficulty];
    final emitColor = AppColors.emitColors[_difficulty];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            /// bg base
            Image.asset(AssetPaths.titleBgBase),

            /// bg receive
            _LitImage(
                imgSrc: AssetPaths.titleBgReceive,
                color: orbColor,
                lightAmt: _finalReceivedLightAmt),

            /// mg base
            _LitImage(
              imgSrc: AssetPaths.titleMgBase,
              color: orbColor,
              lightAmt: _finalReceivedLightAmt,
            ),

            /// mg receive
            _LitImage(
              imgSrc: AssetPaths.titleMgReceive,
              color: orbColor,
              lightAmt: _finalReceivedLightAmt,
            ),

            /// mg emit
            _LitImage(
              imgSrc: AssetPaths.titleMgEmit,
              color: emitColor,
              lightAmt: _finalEmitLightAmt,
            ),

            /// fg rocks
            _LitImage(
              imgSrc: AssetPaths.titleFgBase,
              color: orbColor,
              lightAmt: _finalReceivedLightAmt,
            ),

            /// fg receive
            _LitImage(
              imgSrc: AssetPaths.titleFgReceive,
              color: orbColor,
              lightAmt: _finalReceivedLightAmt,
            ),

            /// fg emit
            _LitImage(
              imgSrc: AssetPaths.titleFgEmit,
              color: emitColor,
              lightAmt: _finalEmitLightAmt,
            ),

            /// ui layer
            Positioned(
                child: TitleScreenUi(
              difficulty: _difficulty,
              onDifficultyPressed: _handleDifficultyPressed,
              onDifficultyFocused: _handleDifficultyFocused,
            ))
          ],
        ),
      ),
    );
  }
}

class _LitImage extends StatelessWidget {
  const _LitImage({
    required this.color,
    required this.imgSrc,
    required this.lightAmt,
  });

  final Color color;
  final String imgSrc;
  final double lightAmt;

  @override
  Widget build(BuildContext context) {
    final hsl = HSLColor.fromColor(color);
    return Image.asset(
      imgSrc,
      color: hsl.withLightness(hsl.lightness * lightAmt).toColor(),
      colorBlendMode: BlendMode.modulate,
    );
  }
}
