
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;
  const CustomCard({
    super.key, required this.image, required this.text1, required this.text2, required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 330,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Image.asset(image),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1),
                  Text(text2,style: const TextStyle(color: Color(0xff6A7189)),),
                  Text(text3,style: const TextStyle(color: Color(0xff01888A),fontSize: 17,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}