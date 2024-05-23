import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salary_slip/provider/loginprovider.dart';
import 'package:salary_slip/screens/homescreen.dart';

class LoginScreen extends StatefulWidget {
  static const loginRoute = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkedValue = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Consumer<Login>(builder: (context, value, child) {
          if (value.auth.currentUser != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomeScreen.homeRoute,
                (route) => false,
              );
            });
          }
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    textAlign: TextAlign.center,
                    'Guru Tegh Bahadur\nInstitute of Technology',
                    //textAlign: TextAlign.left,
                    style: GoogleFonts.openSans(
                      shadows: const [
                        Shadow(
                          color: Color.fromARGB(
                              47, 59, 59, 59), // Choose the color of the shadow
                          blurRadius:
                              5.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(1,
                              1), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/gtblogo.png"),
                            fit: BoxFit.fitHeight),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(150)),
                  ),
                  Text(
                    'Welcome !',
                    //textAlign: TextAlign.left,
                    style: GoogleFonts.quicksand(
                      shadows: const [
                        Shadow(
                            color: Color.fromARGB(45, 53, 52,
                                52), // Choose the color of the shadow
                            blurRadius:
                                5.0, // Adjust the blur radius for the shadow effect
                            offset: Offset(1,
                                1) // Set the horizontal and vertical offset for the shadow
                            ),
                      ],
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        suffixIcon: const Icon(Icons.email_outlined),
                        filled: true,
                        fillColor: const Color.fromARGB(59, 192, 222, 247),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontFamily: 'Calibri',
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: TextField(
                      obscureText: _isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          filled: true,
                          fillColor: const Color.fromARGB(59, 192, 222, 247),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          focusColor: Colors.black,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontFamily: 'Calibri')),
                    ),
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.fromLTRB(25.sp, 0, 0, 0),
                    activeColor: Colors.blue,
                    selectedTileColor: Colors.black,
                    title: const Text("Remember Me",
                        style: TextStyle(
                          fontFamily: 'Calibri',
                        )),

                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ), //Row
                ],
              ),
              if (value.loading) ...[
                Container(
                  height: Device.safeHeight,
                  width: Device.safeWidth,
                  color: const Color.fromARGB(139, 41, 41, 41),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                )
              ]
            ],
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.fromLTRB(65, 11, 65, 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          onPressed: () async {
            await context
                .read<Login>()
                .signIn(emailController.text, passwordController.text)
                .then((value) =>
                    Navigator.pushNamed(context, HomeScreen.homeRoute));
          },
          child: Text(
            "Log in",
            style: TextStyle(
              fontFamily: 'Calibri',
              fontWeight: FontWeight.w500,
              fontSize: 17.sp,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
