import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salary_slip/provider/temp.dart';




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
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final login =Provider.of<Login>(context);
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
                  alignment:  Alignment(0, -3.4.sp),
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
                          offset: Offset(1.5,
                              1.5), // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Align(
                  alignment:  Alignment(0, -2.5.sp),
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/gtblogo.png"),
                            fit: BoxFit.fitHeight),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(150)
                      
                        ),
                  )),
              Align(
                  alignment:  Alignment(0, -0.7.sp),
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
                          offset: Offset(1.5,
                              1.5) // Set the horizontal and vertical offset for the shadow
                        ),
                      ],
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )),

              Align(
                  alignment:  Alignment(0,3.6.sp),
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
                                    const EdgeInsets.fromLTRB(65,11,65,11)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0))))),
                            onPressed: ()async {
                              await login.signIn(emailController.text, passwordController.text);

                              Navigator.pushNamed(context, '/listscreen');
                            },
                            child: Text("         Log in          ",
                                style: TextStyle(
                                    fontFamily: 'Calibri',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.sp,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)))),
                      ]))),

              Align(
                  alignment:  Alignment(0, 1.5.sp),
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
                      child:  Stack(children: <Widget>[
                        TextField(
                          controller: emailController,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(20),
                            suffixIcon: const Icon(Icons.email_outlined),
                            filled: true,
                            fillColor: const Color.fromARGB(59, 192, 222, 247),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              
                              fontFamily: 'Calibri',
                              color: Colors.black.withOpacity(0.4),
                            ),
                            
                          ),
                        ),
                      ]))),
              Align(
                  alignment: Alignment(0, 2.1.sp),
                  child: Container(
                      height: 55,
                      decoration: const BoxDecoration(),
                      width: 350,
                      child: Stack(children: <Widget>[
                        TextField(
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
                              labelStyle:  TextStyle(
                                  color: Colors.black.withOpacity(0.4), fontFamily: 'Calibri')),
                        ),
                      ]))),
              Align(
                alignment:  Alignment(0, 2.44.sp),

                child: CheckboxListTile(
                  contentPadding: EdgeInsets.fromLTRB(25.sp,0,0,0),
                  activeColor: Colors.blue,
                  selectedTileColor: Colors.black,
                  title: const Text("Remember Me",style: TextStyle(
                                    fontFamily: 'Calibri',)),
                  tileColor: Colors.black.withOpacity(0.7),
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
