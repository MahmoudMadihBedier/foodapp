import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatefulWidget {
  static String routename = "homeScreen";
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> Category = ["All", "combu","slider", "classic"];
  int slectedindex=0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Gap(60),
              //header
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/logo/Hungry.svg",
                        color: ColorApp.primyColor,
                        height: 35,
                      ),
                      Gap(5),
                      CoustomeTexr(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        data: "userName .welcome back",
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(radius: 40),
                ],
              ),

              Gap(20),
              // search
              Material(
                elevation: 10,
                shadowColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                child: TextField(
                  decoration: InputDecoration(
                    hint: CoustomeTexr(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      data: "search .....",
                    ),
                    prefixIcon: Icon(CupertinoIcons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: List.generate(
                    Category.length,
                     ((index) =>GestureDetector(
                      onTap: () {
                        setState(() {
                           slectedindex=index;
                        });
                      },
                       child: Container(
                                         padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                                         margin: EdgeInsets.only(left: 10),
                                         decoration: BoxDecoration(
                                           color: slectedindex==index ?ColorApp.primyColor :Colors.grey.shade400,
                                           borderRadius: BorderRadius.circular(20)
                                           
                                         ),
                                         child: CoustomeTexr(
                                           data: Category[index], 
                                           color: slectedindex==index ?Colors.white :Colors.black,
                       fontSize: 14, 
                       fontWeight: FontWeight.normal),
                                       ),
                     ) ),
                ),),
              )
              
             
                  
            ],
          ),
        ),
      ),
    );
  }
}
