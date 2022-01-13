import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dimouzika/Views/homepage/home.dart';
import 'package:dimouzika/Views/loginPage/viewmodel/logincontroller.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Views/signup/viewermodel/registrationcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => SignInController()),
            ChangeNotifierProvider(create: (_) => SignUpController())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
              home: MyApp()));
    },
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 200,
        splash: Image.asset('assets/logo1.png',),
        nextScreen: home(),
        splashTransition: SplashTransition.scaleTransition,
      );

    });
  }
}
