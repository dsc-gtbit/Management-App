import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salary_slip/provider/temp.dart';
import 'route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        initialRoute: "/login",
        onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
      ),
    );
  }
}
