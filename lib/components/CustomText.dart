import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText(this.text, this.fontSize, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
