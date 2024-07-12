import 'package:flutter/material.dart';

class CustomELBTN extends StatelessWidget {
  final Color bgcolor;
  final String btname;
  final Color textcolor;
  final double fontsize;
  final void Function()? onPressed;
  const CustomELBTN({
    super.key,
    required this.bgcolor,
    required this.btname,
    required this.textcolor,
    required this.fontsize, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: onPressed,
        child: Text(
          btname,
          style: TextStyle(color: textcolor, fontSize: fontsize),
        ));
  }
}
