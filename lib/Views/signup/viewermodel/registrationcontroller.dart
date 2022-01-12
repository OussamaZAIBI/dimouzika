import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:dimouzika/Views/homepage/home.dart';
import 'package:dimouzika/Views/loginPage/login.dart';
//import 'package:dimouzika/Views/loginPage/viewmodel/logincontroller.dart';
import 'package:dimouzika/Views/signup/signup_firstpage.dart';

CollectionReference utilisateur =
    FirebaseFirestore.instance.collection("Utilisateur");

Future<void> addUser(String email, String password, String name,
    String lastname, String birthday, BuildContext context) {
  // Call the user's CollectionReference to add a new user
  return utilisateur
      .add({
        'name': name, // John Doe
        'lastname': lastname, // Stokes and Sons
        'Email': email,
        'password': password,
        'Birthday': birthday, // 42
      })
      .then((value) => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Creating Account'),
              content: const Text('your account has been successfully created'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return SignIn();
                  })),
                  child: const Text('OK'),
                ),
              ],
            ),
          ))
      .catchError((error) => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Creating Account'),
              content: const Text("Failed to add user"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, "OK"),
                  child: const Text('OK'),
                ),
              ],
            ),
          ));
}

class RegController with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String message = '';
  User? currentuser = FirebaseAuth.instance.currentUser;
  Future Registration(String email, String password, String name,
      String lastname, String birthday, BuildContext cxt) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      addUser(email, password, name, lastname, birthday, cxt);
      notifyListeners();
      if (currentuser != null && !currentuser!.emailVerified) {
        await _auth.currentUser!.sendEmailVerification();
      }
      return;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
    }
    ScaffoldMessenger.of(cxt).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(cxt).errorColor,
      ),
    );
  }
}

class SignUpController extends StatefulWidget with ChangeNotifier {
  String? Email;
  String? Password;
  String? Name;
  String? LastName;
  String? Birthday;
  SignUpController(
      {Key? key,
      this.Email,
      this.Password,
      this.Name,
      this.LastName,
      this.Birthday})
      : super(key: key);

  @override
  _SignUpControllerState createState() => _SignUpControllerState();
}

class _SignUpControllerState extends State<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: FutureBuilder(
                future: RegController().Registration(
                    widget.Email.toString(),
                    widget.Password.toString(),
                    widget.Name.toString(),
                    widget.LastName.toString(),
                    widget.Birthday.toString(),
                    context),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return signup_page(
                      name: widget.Name.toString(),
                      lastname: widget.LastName.toString(),
                      birthday: widget.Birthday.toString(),
                    );
                  }
                })));
  }
}
