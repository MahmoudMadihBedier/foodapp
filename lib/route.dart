import 'package:flutter/widgets.dart';
import 'package:foodapp/features/auth/view/loging_screen.dart';
import 'package:foodapp/features/auth/view/signup_screen.dart';
import 'package:foodapp/features/home/view/homeScreen.dart';
import 'package:foodapp/root.dart';
import 'package:foodapp/spalshScreen.dart';

Map <String ,WidgetBuilder >routeMap =
   {
        Spalshscreen.routeName:(context) => Spalshscreen(),
        LogingScreen.routeName:(context)=>LogingScreen(),
        SignupScreen.routeName:(context)=>SignupScreen(),
        Homescreen.routename:(context) => Homescreen(),
        Root.routeName:(context) =>Root() 
      };
