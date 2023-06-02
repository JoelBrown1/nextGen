import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:window_size/window_size.dart';

import './styles.dart';

void main() {
  if (!kIsWeb && (Platform.isWindows || Platform.isIOS || Platform.isLinux)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowMinSize(const Size(800, 500));
  }
  runApp(const NextGenApp());
}

class NextGenApp extends StatelessWidget {
  const NextGenApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Center(
          child: Text(
            'Insert Next-Generation UI Here...',
            style: TextStyles.h2,
          ),
        ),
      ),
    );
  }
}
