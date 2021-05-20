import 'package:flutter/material.dart';
import 'package:onmascota/screens/splash_gif/componenets/body.dart';

import '../../size_config.dart';

class SplashScreenWithGif extends StatelessWidget {
  static String routeName = "/splashWithGif";

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
