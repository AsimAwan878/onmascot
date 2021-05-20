import 'package:flutter/material.dart';
import 'package:onmascota/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final Function onPress;

  const CustomButton(
      {Key key,
      @required this.buttonText,
      @required this.buttonColor,
      @required this.textColor,
      this.borderColor,
      @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: buttonColor,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          side: BorderSide(
              color: borderColor == null ? primaryColor : borderColor),
          textStyle: TextStyle(color: textColor)),
      onPressed: onPress,
      child: Row(
        children: [
          Expanded(
            child: Text(
              buttonText.toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: borderColor,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
