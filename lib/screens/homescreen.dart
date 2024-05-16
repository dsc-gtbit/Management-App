import 'package:flutter/material.dart';
import 'package:salary_slip/screens/Profilescreen.dart';
import 'package:salary_slip/screens/android_large_one_screen.dart';
import 'package:salary_slip/screens/expandlist.dart';
import 'package:salary_slip/screens/listscreen.dart';

class HomeScreen extends StatefulWidget {
  static const homeRoute = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _ctr;
  @override
  void initState() {
    _ctr = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _ctr, children: [
        ListScreen(),
        SecondScreen(),
        AndroidLargeOneScreen(),
        PRofileScreen()
      ]),
      bottomNavigationBar: TabBar(controller: _ctr, tabs: [
        Tab(
            child: Text(
          "home",
        )),
        Tab(
            child: Text(
          "pay",
        )),
        Tab(
            child: Text(
          "android",
        )),
        Tab(
            child: Text(
          "extanded",
        ))
      ]),
    );
  }
}
