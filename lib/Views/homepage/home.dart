import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dimouzika/Views/loginPage/login.dart';
import 'package:dimouzika/Views/signup/signup.dart';
import 'package:sizer/sizer.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 15.h, 0, 8.h),
                    child: Image.asset(
                      'assets/logo1.png',
                    ))),
            const SizedBox(height: 20.0),
            Container(
              width: 80.w,
              padding: EdgeInsets.symmetric(vertical: 0.3.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF79532)),
              child: TextButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return signup();
                    }));
                  },
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontFamily: 'IstokWeb',
                    ),
                  )),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: 80.w,
              padding: EdgeInsets.symmetric(vertical: 0.3.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF79532)),
              child: TextButton(
                  onPressed: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
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
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
