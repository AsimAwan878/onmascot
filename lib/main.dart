import 'package:flutter/material.dart';
import 'package:onmascota/screens/splash/splash_screen.dart';

import 'package:onmascota/screens/splash_gif/splash_screen.dart';
import 'package:onmascota/screens/welcome/welcome_screen.dart';
import 'package:onmascota/views/screens/create_account_partner/components/body.dart';
import 'package:onmascota/views/screens/create_account_partner/create_account_partner_screen.dart';

import 'constant.dart';

import 'package:onmascota/config/cus_theme.dart';
import 'package:onmascota/views/auth/login_screen.dart';
import 'package:onmascota/views/screens/start_screen.dart';
import 'package:onmascota/views/screens/start_screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: SplashScreenWithGif(),
        title: 'Onmascota',
        routes: <String, WidgetBuilder>{
          SPLASH_SCREEN: (BuildContext context) => SplashScreenWithGif(),
          WELCOME_SCREEN: (BuildContext context) => WelcomeScreen(),
        });
  }
}
