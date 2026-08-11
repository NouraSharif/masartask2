import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masar2/view/screen/home_screen.dart';
import 'package:masar2/view/widget/authentication/signupheader.dart';
import 'package:masar2/view/widget/authentication/buttomnavigation.dart';
import 'package:masar2/view/widget/authentication/textformfield.dart';
import 'package:masar2/view/widget/authentication/textrichsignup.dart';
import 'package:masar2/view/widget/authentication/textsignup.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SingUpHeader()),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          TextSignUp(
            text: "Please fill the following information to create new account",
            fontSize: 16,
          ),
          SizedBox(height: 30),
          Textformfield(
            title: "Your Email",
            labelText: "ramzi@crowdbotics.com",
            obscureText: false,
          ),
          // SizedBox(height: 15),
          Textformfield(
            title: "Password",
            labelText: "•••••••••••",
            obscureText: true,
          ),
          // SizedBox(height: 15),
          Textformfield(
            title: "Confirm your Password",
            labelText: "a*b12345",
            obscureText: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: TextSignUp(
              text:
                  "Must be at least 8 characters with one number and one special character",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 15),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.square_rounded,
                      color: Colors.blueAccent,
                      size: 24,
                    ),
                    Icon(Icons.square_rounded, color: Colors.white, size: 12),
                  ],
                ),
                Text(
                  "confirm you are above 18 years old",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: const Color.fromARGB(255, 128, 84, 205),
              minimumSize: Size(double.infinity, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 45),
            child: TextRichSignUp(),
          ),
          Center(child: TextSignUp(text: "Or Continue with", fontSize: 16)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonNavigationSignUp(
                foregroundColor: Colors.white,
                backgroundColor: Colors.redAccent,
                icon: FontAwesomeIcons.google,
              ),
              ButtonNavigationSignUp(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                icon: FontAwesomeIcons.facebookF,
              ),
              ButtonNavigationSignUp(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                icon: FontAwesomeIcons.apple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
