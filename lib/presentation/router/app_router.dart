import 'package:flutter/material.dart';

import '../../core/exceptions/route_exception.dart';
import '../screens/button/button_page.dart';
import '../screens/dashboard/dashboard_page.dart';
import '../screens/fifth/fifth_page.dart';
import '../screens/forth/forth_page.dart';
import '../screens/second/second_page.dart';
import '../screens/third/third-page.dart';

class AppRouter {
  static const String home = '/';
  static const String button = "/button";
  static const String dashboard = "/dashboard";
  static const String secondRoute = "/second";
  static const String thirdRoute = "/third";
  static const String forthRoute = "/forth";
  static const String fifthRoute = "/fifth";

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
      case button:
        return _buttonMaterialPageRoute();
      case dashboard:
        return _dashboardMaterialPageRoute();
      case secondRoute:
        return _secondMaterialPageRoute();
      case thirdRoute:
        return _thirdMaterialPageRoute();
      case forthRoute:
        return _fourthMaterialPageRoute();
      case fifthRoute:
        return _fifthMaterialPageRoute();
      default:
        throw const RouteException('Route not found!');
    }
  }

  static _buttonMaterialPageRoute() => MaterialPageRoute(
        builder: (_) => const ButtonPage(),
      );

  static _dashboardMaterialPageRoute()=> MaterialPageRoute(
    builder: (_) => const DashboardPage(),
  );

  static _secondMaterialPageRoute() => MaterialPageRoute(
    builder: (_) => const SecondPage(),
  );

  static _thirdMaterialPageRoute() => MaterialPageRoute(
    builder: (_) => const ThirdPage(),
  );

  static _fourthMaterialPageRoute() => MaterialPageRoute(
    builder: (_) => const ForthPage(),
  );

  static _fifthMaterialPageRoute() => MaterialPageRoute(
    builder: (_) => const FifthPage(),
  );
}
