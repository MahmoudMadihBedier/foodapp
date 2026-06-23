import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/auth/shared/customeButton.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/features/products/lists/sideoptions.dart';
import 'package:foodapp/features/products/lists/toopingList.dart';
import 'package:foodapp/features/products/shared/customizeorder.dart';
import 'package:foodapp/shared/customeText.dart';
import 'package:gap/gap.dart';

class ProductDetailspage extends StatefulWidget {
  static String routename = "ProductDetailsPage";
  ProductDetailspage({super.key});

  @override
  State<ProductDetailspage> createState() => _ProductDetailspageState();
}

class _ProductDetailspageState extends State<ProductDetailspage> {
  double valueSlider = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 29,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pushNamed(context, Homescreen.routename),
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Customizeorder(
            valueSlider: valueSlider,
            onChange: (v) => setState(() {
              valueSlider = v;
            }),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CoustomeTexr(
                                data: "topping",
                                color: Colors.grey,
                                fontSize: 29,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          Gap(20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                ToopelList.length,
                                (index) => ToopelList[index],
                              ),
                            ),
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CoustomeTexr(
                                data: "Side option",
                                color: Colors.grey,
                                fontSize: 29,
                                fontWeight: FontWeight.normal,
                              ),
                            ],
                          ),
                          Gap(20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                SideOption.length,
                                (index) => SideOption[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(30),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CoustomeTexr(
                              data: "TOTAL",
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),

                            CoustomeTexr(
                              data: "\$ 18.19 ",
                              color: ColorApp.primyColor,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ],
                        ),
                      Customebutton(title: "Add To Cart", ontap: (){})
                      ],
                    ),
                  ),
                  Gap(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
