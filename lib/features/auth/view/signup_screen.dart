import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/auth/shared/customeButton.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/shared/customTextform.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  static String routeName="signUpscreen";
  TextEditingController nameTextControler =TextEditingController();
  TextEditingController usernameTexTControler =TextEditingController();
  TextEditingController emailTextControler=TextEditingController();
  TextEditingController passTextControler=TextEditingController();
  TextEditingController confirmPassTextControler =TextEditingController();

  

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
                textcontroler: nameTextControler,
                hint: " full name",
                 isPassword: false,
                  ), 
                  Gap(20),
                  Customtextform(
                    textcontroler: usernameTexTControler,
                hint: "user name",
                 isPassword: false,
                  ), 
                  Gap(20),
               
             
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
               Customebutton(
                title: "singup", 
                ontap:() {
                if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, SignupScreen.routeName);
                  }
                  print("need neddd");
                  //Navigator.pushNamed(context,SignupScreen.routeName );
                }

               )
               
            ],
          ),
        ),
      ),
    );
  }
}