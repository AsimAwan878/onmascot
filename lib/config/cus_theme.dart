import 'package:flutter/material.dart';
import 'package:onmascota/utils/constants.dart';

ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    buttonColor: primaryColor,
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        )));
