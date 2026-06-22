import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/shared/customTextform.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  static String routeName="signUpscreen";
  
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
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap(100),
              Center(child: SvgPicture.asset("assets/logo/Hungry.svg")),
              Gap(10),
              CoustomeTexr(
                data:"welcome back to our app" ,
                 color: Colors.white,
                  fontSize: 15, 
                  fontWeight: FontWeight.bold
                  
              ),
              Gap(50),
              Customtextform(
                hint: " full name",
                 isPassword: false,
                  ), 
                  Gap(20),
                  Customtextform(
                hint: "user name",
                 isPassword: false,
                  ), 
                  Gap(20),
               
             
              Customtextform(
                hint: "email adress",
                 isPassword: false,
                  ), 
                  Gap(20),
               
              Customtextform(
                hint: "password",
                 isPassword: true,
                  ),
                  Gap(30),
               GestureDetector(
                  onTap: () {
                    
                  if (formKey.currentState!.validate()){
                    Navigator.pushNamed(context, Homescreen.routename);
                  }
                  },
                 child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.circular(15)
                 
                  ),
                  child: Center(
                    child: CoustomeTexr(
                      
                      data: "cearte acount", 
                      color: ColorApp.primyColor,
                       fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                 ),
               ),
               Spacer(),
                Image.asset("assets/images/sanduasg.png")
            ],
          ),
        ),
      ),
    );
  }
}