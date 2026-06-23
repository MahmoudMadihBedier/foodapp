import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';

class Customebutton extends StatelessWidget {
  final Function() ? ontap;
  final String title;
   Customebutton({super.key ,required this.title ,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap:ontap,
                 child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.circular(15)
                 
                  ),
                  child: Center(
                    child: CoustomeTexr(
                      
                      data: title, 
                      color: ColorApp.primyColor,
                       fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                 ),
               );
  }
}