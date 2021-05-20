import 'package:flutter/material.dart';
import 'package:onmascota/config/cus_theme.dart';
import 'package:onmascota/views/screens/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: StartScreen(),
    );
  }
}
