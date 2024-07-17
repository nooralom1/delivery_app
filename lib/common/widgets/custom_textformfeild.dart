
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String heinTex;
  final String labelText;
  final IconData? suffixIcon;
  const CustomTextFormField({
    super.key, required this.heinTex, required this.labelText, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color(0xffECEDF0))),
          hintText: heinTex,
          labelText: labelText,
          suffixIcon: Icon(
            suffixIcon,
            color: const Color(0xffAAAEBE),
          ),
        ),
      ),
    );
  }
}