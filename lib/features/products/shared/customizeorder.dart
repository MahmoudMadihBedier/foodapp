import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class Customizeorder extends StatefulWidget {
  final double valueSlider;
  final ValueChanged<double> onChange;
  Customizeorder({
    super.key,
    required this.valueSlider,
    required this.onChange,
  });

  @override
  State<Customizeorder> createState() => _CustomizeorderState();
}

class _CustomizeorderState extends State<Customizeorder> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: Colors.white.withOpacity(0.5),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Image.asset("assets/images/cartSand.png", height: 200),
            Spacer(),
            Column(
              children: [
                CoustomeTexr(
                  data:
                      "Customize Your Burger \n to Your Tastes. Ultimate\n Experience",
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),

                Slider(
                  min: 0,
                  max: 1,
                  thumbColor: ColorApp.primyColor,
                  activeColor: ColorApp.primyColor,
                  inactiveColor: Colors.grey.shade300,

                  value: widget.valueSlider,
                  onChanged: widget.onChange,
                ),
                Row(children: [Text("🥶"), Gap(100), Text("🌶️")]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
