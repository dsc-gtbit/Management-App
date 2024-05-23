import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:salary_slip/provider/loginprovider.dart';
import 'package:salary_slip/screens/loginscreen.dart';

class PRofileScreen extends StatelessWidget {
  const PRofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent.shade400,
          ),
          onPressed: () async {
            await context.read<Login>().signOutFunction().then((value) =>
                Navigator.pushNamedAndRemoveUntil(
                    context, LoginScreen.loginRoute, (route) => false));
          },
          child: Text(
            "Log - out",
            style: GoogleFonts.lato(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
