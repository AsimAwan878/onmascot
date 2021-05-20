import 'package:flutter/widgets.dart';
import 'package:onmascota/screens/splash/splash_screen.dart';
import 'package:onmascota/screens/splash_gif/splash_screen.dart';
import 'package:onmascota/screens/welcome/welcome_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreenWithGif(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};
