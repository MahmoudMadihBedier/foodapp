import 'package:flutter/material.dart';

class CoustomeTexr extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const CoustomeTexr({
    super.key,
     required this.data ,
     required this.color ,
     required this.fontSize,
     required this.fontWeight
     });

  @override
  Widget build(BuildContext context) {
    return Text(
              data,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: color,
              ),
            );
  }
}