import 'package:flutter/material.dart';
import 'package:foodapp/features/auth/view/loging_screen.dart';
import 'package:foodapp/root.dart';
import 'package:foodapp/route.dart';
import 'package:foodapp/spalshScreen.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Root.routeName ,
      routes:routeMap,
    );
  }
}