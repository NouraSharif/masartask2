import 'package:flutter/material.dart';
import 'package:masar2/view/screen/home_screen.dart';
import 'package:masar2/view/screen/reset_password.dart';
import 'package:masar2/view/widget/authentication/textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 100),
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
              Align(
                alignment: Alignment.centerRight, // يزيح العنصر بالكامل لليمين
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot Your Password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
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
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
