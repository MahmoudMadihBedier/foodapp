import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class UserHader extends StatelessWidget {
  const UserHader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              ) ;
  }
}