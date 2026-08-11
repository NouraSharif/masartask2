import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonNavigationSignUp extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final FaIconData icon;

  const ButtonNavigationSignUp({
    super.key,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        minimumSize: Size(150, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {},
      child: FaIcon(icon, size: 30),
    );
  }
}
