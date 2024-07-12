import 'package:delyvery_app/common/color.dart';
import 'package:delyvery_app/common/widgets/custom_circle.dart';
import 'package:delyvery_app/common/widgets/custom_eluvated_btn.dart';
import 'package:flutter/material.dart';

import 'authentication/login.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Image.asset("asset/images/delivery_vhicle.png"),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircle(radius: 7, bgcolor: Color(NColor.orangeColor)),
                    SizedBox(
                      width: 5,
                    ),
                    CustomCircle(radius: 7, bgcolor: Colors.black45),
                    SizedBox(
                      width: 5,
                    ),
                    CustomCircle(radius: 7, bgcolor: Colors.black26),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Get started on Ordering your Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Please create an account or sign in to your existing account to start parcel delivery.",
                  style: TextStyle(fontSize: 17, color: Color(0xff6A7189)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 60,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: CustomELBTN(
                        bgcolor: Color(0xfffad4e7),
                        btname: ("Skip"),
                        textcolor: Color(NColor.orangeColor),
                        fontsize: 18,
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogInPage()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: CustomELBTN(
                        bgcolor: Color(NColor.orangeColor),
                        btname: ("Continue"),
                        textcolor: Colors.white,
                        fontsize: 18,
                        onPressed: (){},
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
