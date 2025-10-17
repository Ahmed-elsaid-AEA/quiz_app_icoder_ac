import 'package:flutter/material.dart';
import 'package:quiz_app/core/screen/unknown_route/unknown_route_screen.dart';
import 'package:quiz_app/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:quiz_app/view/splash/widgets/splash_screen.dart';

class RoutesManager {
  RoutesManager._();
 static Route<dynamic> onGenerateRoute(RouteSettings settings) {
     Widget widget;
    if (settings.name == RoutesName.splash.name) {
      widget = SplashScreen();
    } else if (settings.name == RoutesName.onBoarding.name) {
      widget = OnBoardingScreen();
    } else {
      widget = UnknownRouteScreen();
    }
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}

enum RoutesName {
  splash("/"),
  onBoarding("/onBoarding");

  final String name;

  const RoutesName(this.name);
}
