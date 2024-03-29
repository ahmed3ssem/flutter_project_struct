import 'package:flutter/material.dart';
import 'package:flutter_project_struct/feature/splash/presentation/screen/splash_screen.dart';

class Routes{

  static const String initialRoutes = '/';

}

class AppRoutes{

  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case Routes.initialRoutes:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen();
        });
      default:
        return null;
    }
  }
}