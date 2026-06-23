import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';

class Customebutton extends StatelessWidget {
  final String text;
  final Function() ontapFunction;
  const Customebutton({super.key,required this.text ,required this.ontapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                          onTap: ontapFunction,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 25,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorApp.primyColor,
                            ),
                            child: CoustomeTexr(
                              data: text,
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
  }
}