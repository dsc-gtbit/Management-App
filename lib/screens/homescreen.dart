import 'package:flutter/material.dart';
import 'package:salary_slip/screens/Profilescreen.dart';
import 'package:salary_slip/screens/expandlist.dart';
import 'package:salary_slip/screens/listscreen.dart';
import '/screens/payslip_screen.dart';

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
    _ctr = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _ctr, children: const [
        ListScreen(),
        SecondScreen(),
      
        PRofileScreen()
      ]),
      bottomNavigationBar: TabBar(
          controller: _ctr,
          splashBorderRadius: BorderRadius.circular(10),
          tabs: const [
            Tab(
              iconMargin: EdgeInsets.all(0),
              icon: Icon(Icons.home_rounded),
            ),
            Tab(
              iconMargin: EdgeInsets.all(0),
              icon: Icon(Icons.receipt),
            ),
           
            Tab(
              iconMargin: EdgeInsets.all(0),
              icon: Icon(Icons.person),
            )
          ]),
    );
  }
}
