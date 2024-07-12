import 'package:delyvery_app/common/color.dart';
import 'package:delyvery_app/common/widgets/custom_eluvated_btn.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.28,
                color: Color(NColor.blackColor),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image.asset(
                              "asset/images/file.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 52, left: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Mr. NooR",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  "Delivery Man",
                                  style: TextStyle(color: Colors.red),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notification_important_outlined,
                        color: Color(0xffF89E02),
                        size: 35,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 135,
                left: 12,
                child: SizedBox(
                  height: 160,
                  width: 330,
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Earning",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset("asset/images/dollar-square.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Earning"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$625.48",
                                  style: TextStyle(
                                      color: Color(NColor.moneyColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                    "asset/images/percentage-square.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Collection"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$6225.48",
                                  style: TextStyle(
                                      color: Color(NColor.moneyColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("asset/images/wallet.png"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Balance"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$1254.89",
                                  style: TextStyle(
                                      color: Color(NColor.moneyColor),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Overview",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 30,
                  width: 100,
                  child: CustomELBTN(
                      bgcolor: Colors.white,
                      btname: "Monthly",
                      textcolor: Colors.black,
                      fontsize: 14))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.2, color: Color(0xff00B7E9)),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )
            ],
          )
        ],
      ),
    );
  }
}
