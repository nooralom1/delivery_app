import 'package:delyvery_app/pages/dashboard.dart';
import 'package:delyvery_app/pages/parcel.dart';
import 'package:delyvery_app/pages/payment.dart';
import 'package:delyvery_app/pages/profile.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;
  List<Widget> pages = [
    const DashBoard(),
    const PaymentPage(),
    const ParcelPage(),
    const ProfilePage()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items:  [
          const BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/dollar-square.png"), label: 'Payment'),
          BottomNavigationBarItem(
              icon: Image.asset("asset/images/mouse-square.png"), label: 'Parcel'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
      body: pages.elementAt(currentIndex),
    );
  }
}
