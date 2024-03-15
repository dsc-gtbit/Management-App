import 'package:flutter/material.dart';
import 'package:salary_slip/screens/loginscreen.dart';


class AppRouter{
  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case "/login":
      return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
      return MaterialPageRoute(builder: (_) => const Center());
    }

  }
}