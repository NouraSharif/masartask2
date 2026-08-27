import 'package:flutter/material.dart';
import 'package:masar2/view/widget/authentication/tab_bar_header.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onThemeToggle;

  const SplashScreen({super.key, required this.onThemeToggle});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return TabBarHeader(onThemeToggle: widget.onThemeToggle);
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final slideAnimation = Tween<Offset>(
              begin: const Offset(0, 0.08),
              end: Offset.zero,
            ).animate(animation);

            return FadeTransition(
              opacity: animation,
              child: SlideTransition(position: slideAnimation, child: child),
            );
          },
          transitionDuration: const Duration(milliseconds: 700),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8054CD),
      body: Center(child: Image.asset("images/logo1.png", height: 60)),
    );
  }
}
