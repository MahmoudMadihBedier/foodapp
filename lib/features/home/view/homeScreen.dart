import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/home/lists/productslist.dart';
import 'package:foodapp/features/home/widgets/carddWidget.dart';
import 'package:foodapp/features/home/widgets/cartegoryBar.dart';
import 'package:foodapp/features/home/widgets/productwidget.dart';
import 'package:foodapp/features/home/widgets/shearchBar.dart';
import 'package:foodapp/features/home/widgets/useHeader.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatefulWidget {
  static String routename = "homeScreen";
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectindex=0;
  @override
  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Gap(60),
              UserHader(),
              Gap(20),
              Shearchbar(),
              Gap(20),
              Cartegorybar(slectedindex: selectindex,),
             Productwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
