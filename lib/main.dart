import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salary_slip/provider/Getsalprovider.dart';
import 'package:salary_slip/provider/loginprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

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
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: const MaterialColor(4283329759, {
                50: Color(0xffe9edfb),
                100: Color(0xffd4dbf7),
                200: Color(0xffa9b7ef),
                300: Color(0xff7d93e8),
                400: Color(0xff5270e0),
                500: Color(0xff274cd8),
                600: Color(0xff1f3dad),
                700: Color(0xff172d82),
                800: Color(0xff101e56),
                900: Color(0xff080f2b)
              }),
              useMaterial3: true,
              // Define the default brightness and colors.
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 45, 134, 244),
              ),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/login",
            onGenerateRoute: (settings) =>
                AppRouter().onGenerateRoute(settings),
          );
        }));
  }
}
