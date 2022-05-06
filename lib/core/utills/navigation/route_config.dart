import 'package:flutter/material.dart';
import 'package:friends_fraternity_app/core/utills/navigation/route_names.dart';
import 'package:friends_fraternity_app/presentation/screen_exporter.dart';

class RouteConfig {
  RouteConfig._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.kLogin:
        return _makeLoginRoute();
      case RouteNames.kRegistration:
        return _makeRegistrationRoute();
    }
    return _makeDefaultRoute();
  }

  static MaterialPageRoute _makeLoginRoute() {
    return _buildRoute(LoginScreen(), RouteNames.kLogin);
  }

  static MaterialPageRoute _makeDefaultRoute() {
    return _buildRoute(Scaffold(body: Text("Default Route")), "Default");
  }

  static MaterialPageRoute _makeRegistrationRoute() {
    return _buildRoute(RegistrationScreen(), RouteNames.kRegistration);
  }

  static MaterialPageRoute _buildRoute(Widget child, String routeName) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => child,
    );
  }
}
