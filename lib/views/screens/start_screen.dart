import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:onmascota/utils/constants.dart';
import 'package:onmascota/views/auth/login_screen.dart';
import 'package:onmascota/views/screens/start_screen2.dart';
import 'package:onmascota/views/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sizeWidth(context),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Splash-Background.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/Logo.png',
                height: 230,
                width: 230,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: sizeWidth(context) / 1.2,
                  child: CustomButton(
                    buttonColor: primaryColor,
                    buttonText: "get started",
                    onPress: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => StartScreen2())),
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already with an Account? ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginScreen())),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
