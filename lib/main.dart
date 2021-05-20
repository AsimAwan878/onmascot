import 'package:flutter/material.dart';
import 'package:onmascota/screens/splash_gif/splash_screen.dart';
import 'package:onmascota/screens/welcome/welcome_screen.dart';
import 'package:onmascota/theme.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Onmascota',
        debugShowCheckedModeBanner: false,
        home: SplashScreenWithGif(),
        theme: theme(),
        routes: <String, WidgetBuilder>{
          SPLASH_SCREEN: (BuildContext context) => SplashScreenWithGif(),
          WELCOME_SCREEN: (BuildContext context) => WelcomeScreen(),
        });
  }
}
