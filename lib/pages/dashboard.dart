import 'package:delyvery_app/common/color.dart';
import 'package:delyvery_app/common/widgets/custom_container.dart';
import 'package:delyvery_app/common/widgets/custom_eluvated_btn.dart';
import 'package:delyvery_app/common/widgets/customcard.dart';
import 'package:delyvery_app/pages/parcel.dart';
import 'package:delyvery_app/pages/payment.dart';
import 'package:delyvery_app/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.22,
                  color: Color(NColor.blackColor),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              child: Image.asset(
                                "asset/images/file.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "Mr. NooR",
                                    style: TextStyle(
                                        color: Color(0xff21C781), fontSize: 20),
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Delivery Man",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
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
                  top: 100,
                  left: 7,
                  child: SizedBox(
                    height: 140,
                    width: 340,
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
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 25,
                      width: 100,
                      child: CustomELBTN(
                          bgcolor: Colors.white,
                          btname: "Monthly",
                          textcolor: Colors.black,
                          fontsize: 14))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  CustomContainer(
                      borderColor: 0xff00B7E9,
                      bgColor: 0xffe6f9ff,
                      image1: "asset/images/Frame 1000005559.png",
                      image2: "asset/images/Line.png",
                      text1: "Pending Parcels",
                      text2: "126"),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                      borderColor: 0xff21C781,
                      bgColor: 0xffe9fbf4,
                      image1: "asset/images/Frame 2.png",
                      image2: "asset/images/Line2.png",
                      text1: "Delivered Parcels",
                      text2: "504"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  CustomContainer(
                      borderColor: 0xff847FF8,
                      bgColor: 0xffe8e7fe,
                      image1: "asset/images/Frame 3.png",
                      image2: "asset/images/Line3.png",
                      text1: "Partial Delivered Parcels",
                      text2: "45"),
                  SizedBox(
                    width: 10,
                  ),
                  CustomContainer(
                      borderColor: 0xffD2C127,
                      bgColor: 0xfffbf9e9,
                      image1: "asset/images/Frame4.png",
                      image2: "asset/images/Line4.png",
                      text1: "Return Parcels",
                      text2: "29"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending Parcels",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: 25,
                      width: 80,
                      child: CustomELBTN(
                          bgcolor: Colors.white,
                          btname: "View All",
                          textcolor: Colors.black,
                          fontsize: 14))
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            CustomCard(
                image: "asset/images/Rectangle 814225.png",
                text1: "Exclusive Cotton Fiber Head Pillow",
                text2: "Size: 34”, Weight: 2.5K",
                text3: "\$1254.89"),
            CustomCard(
                image: "asset/images/Rectangle 2.png",
                text1: "Exclusive Cotton Fiber Head Pillow",
                text2: "Size: 34”, Weight: 2.5K",
                text3: "\$1254.89"),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()));
                },
                child: Icon(Icons.grid_view)),
            title: Text("Dashboard"),
            selectedColor: Color(0xffEF232F),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage()));
                },
                child: Image.asset("asset/images/dollar-square.png")),
            title: Text("Payment"),
            selectedColor: Color(0xffEF232F),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ParcelPage()));
                },
                child: Image.asset("asset/images/mouse-square.png")),
            title: Text("Parcel"),
            selectedColor: Color(0xffEF232F),
          ),
          SalomonBottomBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: Icon(Icons.person_outline_sharp)),
            title: Text("Profile"),
            selectedColor: Color(0xffEF232F),
          ),
        ],
      ),
    );
  }
}