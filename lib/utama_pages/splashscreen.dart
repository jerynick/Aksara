import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/belajar');
    });
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 175,
          width: 124,
          child: Image.asset('assets/common/logo-splash.png'),
        ),
      ),
    );
  }
}