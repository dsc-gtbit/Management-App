import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salary_slip/provider/temp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

import 'route/routes.dart';

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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/login",
        onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'core/app_export.dart';

// var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//   ThemeHelper().changeTheme('primary');
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return MaterialApp(
//           theme: theme,
//           title: 'payslip_project',
//           debugShowCheckedModeBanner: false,
//           initialRoute: AppRoutes.initialRoute,
//           routes: AppRoutes.routes,
//         );
//       },
//     );
//   }
// }
