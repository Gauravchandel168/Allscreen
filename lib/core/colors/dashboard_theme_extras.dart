import 'package:flutter/material.dart';

import 'app_colors.dart';

extension CountryCodeThemeExtras on ThemeData {
  Color get headerBackgroundColor => brightness == Brightness.light
      ? blue009FE3Color
      : black000000Color;

  Color get hamburgerIconColor => brightness == Brightness.light
      ? whiteFFFFFFColor
      : whiteFFFFFFColor;

  Color get userNameTextColor => brightness == Brightness.light
      ? whiteFFFFFFColor
      : whiteFFFFFFColor;

  Color get userProfileImageBackgroundColor => brightness == Brightness.light
      ? grayF5F5F5Color
      : black434343Color;

  Color get gridContainerBackgroundColor => brightness == Brightness.light
      ? whiteFFFFFFColor
      : black434343Color;

  Color get gridCardBackgroundColor => brightness == Brightness.light
      ? whiteFFFFFFColor
      : black000000Color;

  Color get gridCardIconColor => brightness == Brightness.light
      ? blue009FE3Color
      : whiteFFFFFFColor;

  Color get gridCardTextColor => brightness == Brightness.light
      ? black000000Color
      : whiteFFFFFFColor;
}