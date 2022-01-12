import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilController with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      //print(e.toString());
      return null;
    }
  }
}
