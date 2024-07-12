import 'package:delyvery_app/common/color.dart';
import 'package:delyvery_app/common/icon.dart';
import 'package:delyvery_app/common/widgets/custom_eluvated_btn.dart';
import 'package:delyvery_app/common/widgets/custom_textformfeild.dart';
import 'package:delyvery_app/pages/dashboard.dart';
import 'package:delyvery_app/pages/home.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Image.asset("asset/images/delyvery_vector.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset("asset/images/black....png"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Login to your account & start delivering.",
                    style: TextStyle(color: Color(0xff6A7189), fontSize: 17),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomTextFormField(
                      heinTex: "mrhasib@gmail.com",
                      labelText: "Enter your Email"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextFormField(
                      heinTex: "***********",
                      labelText: "Enter your Password",
                      suffixIcon: NIcon.suffixIcon),
                  const Padding(
                    padding: EdgeInsets.only(left: 150, top: 10),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color(NColor.orangeColor), fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 170,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/images/call.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Login with phone number",
                        style: TextStyle(
                            color: Color(NColor.orangeColor), fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   SizedBox(
                    height: 50,
                    width: 320,
                    child: CustomELBTN(
                      bgcolor: const Color(NColor.orangeColor),
                      btname: "Login",
                      textcolor: Colors.white,
                      fontsize: 17,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
