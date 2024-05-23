import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salary_slip/provider/Getsalprovider.dart';
import 'package:salary_slip/provider/loginprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


import 'routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User?>(
            create: (context) => Login().userChange, initialData: null),
        ChangeNotifierProvider<Login>(
          create: (context) => Login(),
        ),
        ChangeNotifierProvider<GetSal>( 
          create: (context) => GetSal(),
        ),
      ],
      child: ResponsiveSizer(builder: (context, oritentation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/login",
          onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
        );
      }),
    );
  }
}
