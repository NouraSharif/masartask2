import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masar2/core/class/color.dart';
import 'package:masar2/view/screen/login.dart';
import 'package:masar2/view/screen/signup.dart';
import 'package:masar2/view/widget/authentication/buttomnavigation.dart';
import 'package:masar2/view/widget/authentication/textsignup.dart';

class TabBarHeader extends StatelessWidget {
  const TabBarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              padding: const EdgeInsets.symmetric(vertical: 10),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              tabs: const [
                Tab(text: "Login"),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text("Sign Up"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Please fill the following information to create new account",
                style: TextStyle(color: AppColor.textColor, fontSize: 16),
              ),
            ),
            const Expanded(
              child: TabBarView(children: [LoginScreen(), Signup()]),
            ),
            Center(child: TextSignUp(text: "Or Continue with", fontSize: 16)),
            //  SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
