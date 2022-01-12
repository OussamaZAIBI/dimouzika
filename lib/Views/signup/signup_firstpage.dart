import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:dimouzika/Views/signup/viewermodel/registrationcontroller.dart';
import 'package:dimouzika/Views/widgets/formspace.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class signup_page extends StatefulWidget {
  final String name;
  final String lastname;
  final String birthday;
  const signup_page(
      {Key? key,
      required this.name,
      required this.lastname,
      required this.birthday})
      : super(key: key);
  //signup_page(this.name, this.lastname, this.birthday);
  @override
  _signup_pageState createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  //signup_page(this.name, this.lastname, this.birthday);
  @override
  _signup_pageState createState() => _signup_pageState();
  final _formKey = GlobalKey<FormState>();
  final _EmailCon = TextEditingController();
  final _PasswordCon = TextEditingController();
  final _confirmPass = TextEditingController();

  late SignUpController signupcontroller;

  @override
  void initState() {
    signupcontroller = Provider.of<SignUpController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpController>(builder: (context, value, child) {
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  formspace(
                    validationfield:
                        ValidationBuilder().email().required().build(),
                    txt: 'Email',
                    controller: _EmailCon,
                  ),
                  const SizedBox(height: 15.0),
                  formspace(
                    txt: 'Password',
                    validationfield: ValidationBuilder()
                        .minLength(6)
                        .maxLength(10)
                        .required()
                        .build(),
                    controller: _PasswordCon,
                    obs: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  formspace(
                    txt: 'Confirm your Password',
                    validationfield: (val) {
                      val = _confirmPass.text;
                      if (val.isEmpty) return 'Confirm your Password';
                      if (val != _PasswordCon.text) return 'Not Match';
                      return null;
                    },
                    controller: _confirmPass,
                    obs: true,
                  ),
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
                            return SignUpController(
                              Email: _EmailCon.text,
                              Password: _PasswordCon.text,
                              Name: widget.name,
                              LastName: widget.lastname,
                              Birthday: widget.lastname,
                            );
                          }));
                        } else {
                          print('Re-enter your information');
                        }
                      },
                      child: const Text(
                        'Submit',
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
