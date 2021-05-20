import 'package:flutter/material.dart';
import 'package:onmascota/utils/constants.dart';
import 'package:onmascota/views/widgets/custom_button.dart';
import 'package:onmascota/views/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: sizeWidth(context),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Splash-Background.png"),
            fit: BoxFit.cover,
          )),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
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
                      CustomTextFormField(
                        hintText: "Email",
                        isObscure: false,
                        keyBoardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: sizeWidth(context) / 1.2,
                        child: CustomButton(
                          buttonColor: primaryColor,
                          buttonText: "get started",
                          onPress: () {},
                          textColor: Colors.white,
                          borderColor: primaryColor,
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
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      size: 28,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
