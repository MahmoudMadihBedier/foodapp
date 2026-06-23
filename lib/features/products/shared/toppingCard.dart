import 'package:flutter/material.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class Toppingcard extends StatelessWidget {
  final String imagePath;
  final String toppelName;
  const Toppingcard({
    super.key,
    required this.toppelName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(50),
      color: Colors.white.withOpacity(0),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff3C2F2F),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 150),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CoustomeTexr(
                    data: toppelName,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(25),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
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
