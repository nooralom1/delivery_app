import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
  final int borderColor;
  final int bgColor;
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  const CustomContainer({
    super.key, required this.borderColor, required this.bgColor, required this.image1, required this.image2, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(width: 1.2, color: Color(borderColor)),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Color(bgColor),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(image1)),
                const SizedBox(width: 30,),
                SizedBox(
                    width: 70,
                    height: 30,
                    child: Image.asset(image2)),
              ],
            ),
            const SizedBox(height: 10,),
            Text(text1,style: TextStyle(fontSize: 12),),
            Text(text2,style: const TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}