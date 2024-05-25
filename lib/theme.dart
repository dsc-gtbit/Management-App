import 'package:flutter/material.dart';

var themeData = ThemeData(
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
            );