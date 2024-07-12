import 'package:delyvery_app/pages/authentication/login.dart';
import 'package:delyvery_app/pages/dashboard.dart';
import 'package:delyvery_app/pages/onboard1.dart';
import 'package:delyvery_app/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
