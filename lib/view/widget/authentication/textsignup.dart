import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class TextSignUp extends StatelessWidget {
  final String text;
  final double? fontSize;
  const TextSignUp({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: AppColor.textColor),
    );
  }
}
