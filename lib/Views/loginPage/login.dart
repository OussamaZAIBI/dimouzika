import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:dimouzika/Views/loginPage/viewmodel/data.dart';
import 'package:dimouzika/Views/loginPage/viewmodel/logincontroller.dart';
import 'package:dimouzika/Views/widgets/formspace.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late SignInController signincontroller = SignInController();

  @override
  void initState() {
    signincontroller = Provider.of<SignInController>(context, listen: false);
    super.initState();
  }

  final _EmailCon = TextEditingController();
  final _PasswordCon = TextEditingController();
  bool obscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<SignInController>(builder: (context, value, child) {
      return Scaffold(
        backgroundColor: const Color(0xFF4A919E),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  formspace(
                      txt: 'Email',
                      controller: _EmailCon,
                      validationfield:
                          ValidationBuilder().email().required().build()),
                  const SizedBox(height: 15.0),
                  formspace(
                      txt: 'Password',
                      obs: obscure,
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      controller: _PasswordCon,
                      validationfield: ValidationBuilder().required().build()),
                  const SizedBox(height: 30.0),
                  Container(
                    width: 80.w,
                    padding: EdgeInsets.symmetric(vertical: 0.3.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFF79532)),
                    child: TextButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoadingData(
                              email: _EmailCon.text,
                              password: _PasswordCon.text,
                            );
                          }));
                        }
                        ;
                      },
                      child: const Text(
                        'Log In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontFamily: 'IstokWeb',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
