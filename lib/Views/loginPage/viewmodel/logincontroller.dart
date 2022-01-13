import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class SignInController with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String message = '';
  @override
  Future SignInCon(String email, String password, BuildContext cxt) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      notifyListeners();
      return _auth.authStateChanges();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      ScaffoldMessenger.of(cxt).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(cxt).errorColor,
        ),
      );
    }
  }
}

// class SignInController extends StatefulWidget with ChangeNotifier {
//   String? email;
//   String? password;
//   SignInController({Key? key, this.email, this.password}) : super(key: key);

//   @override
//   _SignInControllerState createState() => _SignInControllerState();
// }

// class _SignInControllerState extends State<SignInController> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: FutureBuilder(
//                 future: Sign().SignInCon(widget.email.toString(),
//                     widget.password.toString(), context),
//                 builder:
//                     (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//                   print(snapshot.data);
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   } else if (snapshot.hasData) {
//                     print('hello');
//                     return profil();
//                   } else {
//                     print(snapshot);
//                     return SignIn();
//                   }
//                 })));
//   }
// }
