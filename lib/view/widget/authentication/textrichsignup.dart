import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class TextRichSignUp extends StatelessWidget {
  const TextRichSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "by clicking sign up you agree the ",
            style: TextStyle(color: AppColor.textColor),
          ),
          TextSpan(
            text: "terms and conditions ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.textColor,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: "and our ",
            style: TextStyle(color: AppColor.textColor),
          ),
          TextSpan(
            text: "privacy policy",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.textColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
