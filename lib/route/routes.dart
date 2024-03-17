import 'package:flutter/material.dart';
import 'package:salary_slip/screens/expandlist.dart';
import 'package:salary_slip/screens/listscreen.dart';
import 'package:salary_slip/screens/loginscreen.dart';


class AppRouter{
  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case "/login":
      return MaterialPageRoute(builder: (_) => const LoginScreen());
      case "/listscreen":
      return MaterialPageRoute(builder: (_) => const ListScreen());
      case "/explist":
      return MaterialPageRoute(builder: (_) => const SecondScreen());
      default:
      return MaterialPageRoute(builder: (_) => const Center());
    }

  }
}