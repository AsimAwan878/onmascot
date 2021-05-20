import 'package:flutter/material.dart';
import 'package:onmascota/config/cus_theme.dart';
import 'package:onmascota/views/auth/login_screen.dart';
import 'package:onmascota/views/screens/start_screen.dart';
import 'package:onmascota/views/screens/start_screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: LoginScreen(),
    );
  }
}
