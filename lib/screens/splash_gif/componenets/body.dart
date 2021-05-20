import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onmascota/screens/welcome/welcome_screen.dart';
import 'package:onmascota/views/screens/start_screen.dart';
import 'package:onmascota/views/screens/start_screen2.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => StartScreen())));
    var assetsImage = new AssetImage('assets/images/gif.gif');
    var image = new Image(
      image: assetsImage,
    );
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Image.asset(
            'assets/images/gif.gif',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
