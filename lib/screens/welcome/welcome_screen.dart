import 'package:flutter/material.dart';
import 'package:onmascota/views/widgets/custom_textfield.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(child: CustomTextFormField(),),
    );
  }
}
