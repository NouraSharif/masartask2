import 'package:flutter/material.dart';
import 'package:masar2/view/widget/authentication/textsignup.dart';

class Textformfield extends StatelessWidget {
  final String title;
  final String labelText;
  final bool obscureText;
  const Textformfield({
    super.key,
    required this.title,
    required this.labelText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextSignUp(text: title),
          SizedBox(height: 5),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: labelText,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: title == 'Password' ? 20 : 15,
                color: Colors.black,
              ),
              suffixIcon: title == 'Password'
                  ? Icon(Icons.visibility_off, color: Colors.black)
                  : title == 'Confirm your Password'
                  ? Icon(Icons.visibility, color: Colors.black)
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
