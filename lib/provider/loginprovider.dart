import 'dart:async';

// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login with ChangeNotifier {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore store = FirebaseFirestore.instance;
  User? user;

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
        await store
            .collection("users")
            .doc(user!.uid)
            .get()
            .then((value) => print(value.data()));
      }

      loading = false;
      notifyListeners();
      return user!;
    } catch (e) {
      print('Error signing in: $e');

      rethrow;
    }
  }
}
