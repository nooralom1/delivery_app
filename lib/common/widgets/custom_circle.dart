import 'package:flutter/material.dart';

class CustomCircle extends StatelessWidget {
  final double radius;
  final Color bgcolor;
  const CustomCircle({
    super.key, required this.radius, required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: bgcolor,
    );
  }
}
