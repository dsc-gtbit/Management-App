import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkedValue = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return ResponsiveSizer(builder: (context, orientation, ScreenType) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
              Align(
                  alignment: const Alignment(0, -0.6),
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/gtblogo.png"),
                            fit: BoxFit.fitHeight),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(150)
                        //more than 50% of width makes circle
                        ),
                  )),
              Align(
                  alignment: const Alignment(0, -0.13),
                  child: Text(
                    'Welcome !',
                    //textAlign: TextAlign.left,
                    style: GoogleFonts.openSans(
                      shadows: const [
                        Shadow(
                          color: Color.fromARGB(
                              48, 0, 0, 0), // Choose the color of the shadow
                          blurRadius:
                              5.0, // Adjust the blur radius for the shadow effect
                          offset: Offset(2.0,
                              2.0), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )),

              Align(
                  alignment: Alignment(0, 3.6.sp),
                  child: SizedBox(
                      height: 7.h,
                      //width: 50.w,
                      child: Stack(children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(10.sp)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                            onPressed: () {
                              debugPrintStack();
                            },
                            child: Text(
                                "                  Log In →                 ",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)))),
                      ]))),

              Align(
                  alignment: const Alignment(0, 0.1),
                  child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        //border: Border.all(

                        //  width: 3,
                        //  color: const Color.fromARGB(125, 33, 149, 243)

                        //),
                      ),
                      width: 300,
                      child: const Stack(children: <Widget>[
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: Color.fromARGB(17, 14, 140, 243),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            labelText: '  Email',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            focusColor: Color.fromARGB(255, 167, 21, 21),
                          ),
                        ),
                      ]))),
              Align(
                  alignment: Alignment(0, 1.8.sp),
                  child: Container(
                      height: 55,
                      decoration: const BoxDecoration(),
                      width: 300,
                      child:  Stack(children: <Widget>[
                        TextField(
                          obscureText: _isObscure,
                          style: const TextStyle(
                              color: Colors.black, fontFamily: 'Inter'),
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                              filled: true,
                              fillColor: const Color.fromARGB(17, 14, 140, 243),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              focusColor: Colors.black,
                              labelText: '  Password',
                              labelStyle: const TextStyle(color: Colors.black)),
                        ),
                      ]))),
              Align(
                alignment: Alignment(0, 2.2.sp),
                child: CheckboxListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 100),
                  activeColor: Colors.blue,
                  selectedTileColor: Colors.black,
                  title: const Text("Remember Me"),
                  tileColor: Colors.black,
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ), //Checkbox
              ), //Row
            ],
          ));
    });
  }
}
