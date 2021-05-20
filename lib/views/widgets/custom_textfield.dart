import 'package:flutter/material.dart';
import 'package:onmascota/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool isObscure;
  final TextInputType keyBoardType;

  const CustomTextFormField(
      {Key key,
      @required this.hintText,
      @required this.isObscure,
      @required this.keyBoardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 2,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: sizeWidth(context) / 1.2,
      child: TextFormField(
        obscureText: isObscure ? true : false,
        keyboardType: keyBoardType,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
