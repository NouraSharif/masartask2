import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class SingUpHeader extends StatelessWidget {
  const SingUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Login",
            style: TextStyle(color: AppColor.textColor),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          WidgetSpan(child: SizedBox(width: 150)),
          TextSpan(
            text: "Sing Up",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
