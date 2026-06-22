import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/auth/shared/customeButton.dart';
import 'package:foodapp/features/auth/view/signup_screen.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/shared/customTextform.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class LogingScreen extends StatelessWidget {
  TextEditingController emailTextControler = TextEditingController();
  TextEditingController passTextControler = TextEditingController();
  static String routeName = "loginScreen";

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void valetaor(_v) {
    if (_v == null || _v.trim().isEmpty) {
      print("pless insert the form");
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primyColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(100),
              Center(child: SvgPicture.asset("assets/logo/Hungry.svg")),
              Gap(10),
              CoustomeTexr(
                data: "welcome back to our app",
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              Gap(50),

              Customtextform(
                textcontroler: emailTextControler,
                hint: "email adress",
                isPassword: false,
              ),
              Gap(20),

              Customtextform(
                textcontroler: passTextControler,
                hint: "password",
                isPassword: true,
              ),
              Gap(30),
              //Navigator.pushNamed(context,SignupScreen.routeName );
              Customebutton(
                title: "login",
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, Homescreen.routename);
                  }
                },
              ),
              Spacer(),
              Image.asset("assets/images/sanduasg.png"),
            ],
          ),
        ),
      ),
    );
  }
}
