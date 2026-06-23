import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class Cardwidget extends StatelessWidget {
  String imagePath;
  String title;
  String subTitle;
  double rate;

   Cardwidget({
    super.key ,
  required this.imagePath ,
  required this.title,
  required this.subTitle,
  required this.rate
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade300,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 8,
              child: Center(child: Image.asset(imagePath))),
            Gap(8),
            Expanded(
              child: CoustomeTexr(
                data: title,
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: CoustomeTexr(
                data: subTitle,
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
            
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  CoustomeTexr(
                    data: "${rate}",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}