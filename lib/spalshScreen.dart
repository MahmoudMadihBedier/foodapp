import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/auth/view/loging_screen.dart';
import 'package:gap/gap.dart';

class Spalshscreen extends StatefulWidget {
 static String routeName="HomeScreen";
  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}
class _SpalshscreenState extends State<Spalshscreen> {
  
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1),()=>Navigator.pushNamed(context, LogingScreen.routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(200),
             SvgPicture.asset("assets/logo/Hungry.svg"),
            Spacer(),
            
             Image.asset("assets/images/sanduasg.png")
          ],
        ),
      ),

    );
  }
}