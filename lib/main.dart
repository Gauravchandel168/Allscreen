import 'package:flutter/material.dart';
import 'package:untitled/2ndscreen/second_page.dart';
import 'package:untitled/3rdscreeen/third-page.dart';
import 'package:untitled/4thscreen/forth_page.dart';
import 'package:untitled/5thscreen/fifth_page.dart';
import 'package:untitled/6thscreen/sixth_screeen.dart';
import 'package:untitled/button_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      // home: HomePage(),

      routes: {
        "/": (context) => ButtonPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.buttonRoute: (context) => HomePage(),
        MyRoutes.secondRoute: (context) => SecondPage(),
        MyRoutes.thirdRoute: (context) => ThirdPage(),
        MyRoutes.forthRoute: (context) => ForthPage(),
        MyRoutes.fifthRoute: (context) => FifthPage(),
        MyRoutes.sixthRoute: (context) => SixthPage(),
      },
    ); // material app
  }
}

class MyRoutes {
  static String buttonRoute = "/button";
  static String homeRoute = "/home";
  static String secondRoute = "/second";
  static String thirdRoute = "/third";
  static String forthRoute = "/forth";
  static String fifthRoute = "/fifth";
  static String sixthRoute = "/sixth";
}
