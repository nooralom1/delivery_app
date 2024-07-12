import 'package:delyvery_app/pages/parcel.dart';
import 'package:delyvery_app/pages/payment.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'dashboard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
      centerTitle: true,),
      body: Center(
        child: Text(
          "Working........",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),
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
