import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../colors/app_colors.dart';
import '../constants/font_weight.dart';

appLightTheme(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primarySwatch: createMaterialColor(blue009FE3Color),
    backgroundColor: whiteFFFFFFColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
        color: whiteFFFFFFColor,
        iconTheme: const IconThemeData(color: black666666Color),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: blue009FE3Color,
            fontSize: 20,
            fontWeight: semiBold,
            fontFamily: GoogleFonts.poppins().fontFamily)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

appDarkTheme(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    primarySwatch: createMaterialColor(black000000Color),
    backgroundColor: black434343Color,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    appBarTheme: Theme.of(context).appBarTheme.copyWith(
        color: black000000Color,
        iconTheme: const IconThemeData(color: whiteFFFFFFColor),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: whiteFFFFFFColor,
            fontSize: 20,
            fontWeight: semiBold,
            fontFamily: GoogleFonts.poppins().fontFamily)),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
