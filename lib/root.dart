import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/constans/app_color.dart';
import 'package:foodapp/features/auth/view/profile.dart';
import 'package:foodapp/features/cart/view/cartHome.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/features/orderHistory/view/orderHistory.dart';
import 'package:foodapp/features/products/view/productPage.dart';

class Root extends StatefulWidget {
  static String routeName= "root";
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  late List<Widget> screens;
  int currentSceen = 0;

  @override
  void initState() {
    screens = [
      Homescreen(),
      Carthome(),
      Orderhistory(),
      Productpage(),
      ProfilePages(),
    ];
    controller = PageController(initialPage: currentSceen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screens),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorApp.primyColor,
          borderRadius: BorderRadius.circular(30),

        ),
        child: BottomNavigationBar(
          elevation: 0,
            backgroundColor: Colors.transparent,
            type:BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
        
            onTap: (index){
              setState(() {
                currentSceen=index;
              });
              controller.jumpToPage(currentSceen);
            },
        
        
        
          currentIndex: currentSceen,
          items: [
        
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "cart"),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rectangle_on_rectangle_angled),label: "history"
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_fill),label: "profile"),
          ],
        ),
      ),
    );
  }
}
