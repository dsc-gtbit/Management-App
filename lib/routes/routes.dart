import 'package:flutter/material.dart';
import 'package:salary_slip/models/api_data.dart';
import 'package:salary_slip/screens/api_response_screen.dart';

import 'package:salary_slip/screens/homescreen.dart';

import 'package:salary_slip/screens/loginscreen.dart';
import 'package:salary_slip/screens/payslip_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LoginScreen.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case PayDetails.payDetailRoute:
        return MaterialPageRoute(
            builder: (_) =>
                PayDetails(data: routeSettings.arguments as Employee));
      case HomeScreen.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "/apiData":
        return MaterialPageRoute(builder: (_) => const APIResponseScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Center());
    }
  }
}
