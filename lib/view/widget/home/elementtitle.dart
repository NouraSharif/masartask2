import 'package:flutter/material.dart';

class ElementTitle extends StatelessWidget {
  final String title;
  const ElementTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }
}
