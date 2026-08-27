import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';
import 'package:masar2/view/widget/authentication/tab_bar_header.dart';
import 'package:masar2/view/widget/authentication/textformfield.dart';
import 'package:masar2/view/widget/authentication/textsignup.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset your Password',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text(
                "Please fill the following information to create new account",
                style: TextStyle(color: AppColor.textColor, fontSize: 16),
              ),
              SizedBox(height: 100),
              Textformfield(
                title: "Your Email",
                labelText: "ramzi@crowdbotics.com",
                obscureText: false,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color.fromARGB(255, 128, 84, 205),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Reset Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // استبدل الـ SizedBox(height: 280) بـ:
              SizedBox(height: MediaQuery.of(context).size.height * 0.38),

              Center(
                child: TextSignUp(
                  text: "Remember your Password?",
                  fontSize: 16,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 128, 84, 205),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => TabBarHeader(onThemeToggle: () {}),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
