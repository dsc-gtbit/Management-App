import 'package:flutter/material.dart';

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
                  alignment: const Alignment(0, -0.80),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Guru Tegh Bahadur\nInstitute of Technology',
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Calibri',
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
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Align(
                  alignment: const Alignment(0, -0.45),
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
                  alignment: const Alignment(0, -0.0),
                  child: Text(
                    'Welcome !',
                    //textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Calibri',
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
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              Align(
                  alignment: const Alignment(0, 0.85),
                  child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 192, 191, 191)
                                .withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 20,
                            offset: const Offset(5, -10),
                          ),
                        ],
                      ),
                      //height: 9.h,
                      //width: 200,
                      child: Stack(children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(7.sp)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                            onPressed: () {
                              debugPrintStack();
                            },
                            child: Text("         Log In          ",
                                style: TextStyle(
                                    fontFamily: 'Calibri',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22.sp,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)))),
                      ]))),

              Align(
                  alignment: const Alignment(0, 0.2),
                  child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        //border: Border.all(

                        //  width: 3,
                        //  color: const Color.fromARGB(125, 33, 149, 243)

                        //),
                      ),
                      width: 350,
                      child: const Stack(children: <Widget>[
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            suffixIcon: Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: Color.fromARGB(17, 14, 140, 243),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontFamily: 'Calibri',
                              color: Colors.black,
                            ),
                            focusColor: Color.fromARGB(255, 167, 21, 21),
                          ),
                        ),
                      ]))),
              Align(
                  alignment: const Alignment(0, 0.35),
                  child: Container(
                      height: 55,
                      decoration: const BoxDecoration(),
                      width: 350,
                      child: Stack(children: <Widget>[
                        TextField(
                          obscureText: _isObscure,
                          style: const TextStyle(
                              color: Colors.black, fontFamily: 'Calibri'),
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
                              fillColor: const Color.fromARGB(17, 14, 140, 243),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              focusColor: Colors.black,
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                  color: Colors.black, fontFamily: 'Calibri')),
                        ),
                      ]))),
              Align(
                alignment: const Alignment(0, 0.45),

                child: CheckboxListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 27.sp),
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
