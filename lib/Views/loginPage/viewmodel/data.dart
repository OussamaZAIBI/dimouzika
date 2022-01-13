import 'package:dimouzika/Views/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:dimouzika/Views/loginPage/login.dart';
import 'package:dimouzika/Views/loginPage/viewmodel/logincontroller.dart';



class LoadingData extends StatefulWidget with ChangeNotifier {
  String? email;
  String? password;
  LoadingData({Key? key, this.email, this.password}) : super(key: key);

  @override
  _LoadingDataState createState() => _LoadingDataState();
}

class _LoadingDataState extends State<LoadingData> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: FutureBuilder(
                future: SignInController().SignInCon(widget.email.toString(),
                    widget.password.toString(), context),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  print(snapshot.data);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasData) {
                    return Menu();
                  } else {
                    print(snapshot);
                    return SignIn();
                  }
                })));
  }
}
