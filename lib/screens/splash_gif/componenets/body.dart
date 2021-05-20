import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onmascota/screens/welcome/welcome_screen.dart';

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
            builder: (BuildContext context) => WelcomeScreen())));
    var assetsImage = new AssetImage('assets/images/gif.gif');
    var image = new Image(
      image: assetsImage,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(color: Colors.white),
      child: Image.asset(
        'assets/images/gif.gif',
        fit: BoxFit.cover,
      ),
    );
  }
}
