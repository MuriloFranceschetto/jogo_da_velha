import 'package:flutter/material.dart';
import 'package:jogo_da_velha/core/constants.dart';
import 'package:jogo_da_velha/core/theme_app.dart';
import 'pages/game_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TITLE,
      theme: themeApp,
      home: GamePage(),
    );
  }
}
