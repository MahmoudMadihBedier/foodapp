import 'package:flutter/material.dart';
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
      initialRoute: Spalshscreen.routeName ,
      routes: {
        Spalshscreen.routeName:(context) => Spalshscreen(),
      },
    );
  }
}