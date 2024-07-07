import 'dart:async';

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login with ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore store = FirebaseFirestore.instance;
  User? user;
  String? pfNumber;
  String? designation;
  String? newBasic;
  String? days;
  String? basicPay;
  String? agp;
  String? da;
  String? hra;
  String? tpt;
  String? other;
  String? gross;
  String? taxes;
  String? grossdeductions;
  String? net;
  String? totaldays;
  String? daypresent;
  String? dayabsent;
  String? employeepf;
  String? advloans;
  String? salwords;

  bool loading = false;

  Stream<User?> get userChange {
    return auth.authStateChanges();
  }

  User? get currentUser => auth.currentUser;

  Future signOutFunction() async {
    try {
      return await (auth.signOut());
    } catch (e) {
      throw Exception('');
    }
  }

  Future<User> signIn(String email, String password) async {
    loading = true;
    notifyListeners();
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = result.user;

      if (user != null) {
        await store.collection("users").doc(user!.uid).get().then((value) {
          // ignore: avoid_print
          print(value.data());
          pfNumber = value.data()?['pfNumber'];
        });
      }

      loading = false;
      notifyListeners();
      return user!;
    } catch (e) {
      // ignore: avoid_print
      print('Error signing in: $e');

      rethrow;
    }
  }
}
