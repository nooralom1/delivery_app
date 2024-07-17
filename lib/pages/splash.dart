
import 'dart:async';
import 'package:delyvery_app/common/color.dart';
import 'package:delyvery_app/pages/onboard1.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const Onboard1()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(NColor.blackColor),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/images/delyvery_vector.png"),
              const SizedBox(
                height: 20,
              ),
              Image.asset("asset/images/parsel_fly.png"),
            ],
          ),
        ),
      ),
    );
  }
}

