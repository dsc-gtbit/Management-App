import 'dart:async';

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login with ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  Stream<User?> get userChange {
    return auth.authStateChanges();
  }

  User? get currentUser => auth.currentUser;

  
  

  Future signOutFunction() async{
    try {
 
      return await (auth.signOut());
    } catch (e) {
      throw Exception('');
    }
  }

  Future<User> signIn(String email, String password) async {
    
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = result.user;
      notifyListeners();
      return user!;
     
  }

  
}