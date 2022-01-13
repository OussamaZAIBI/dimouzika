import 'package:dimouzika/Views/profile/profile.dart';
import 'package:dimouzika/Views/menuItem/absence.dart';
import 'package:dimouzika/Views/menuItem/calendar.dart';
import 'package:dimouzika/Views/menuItem/cours.dart';
import 'package:dimouzika/Views/menuItem/pay.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Menu());
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/font.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Text(
                  //'You have pushed the button this many times:',style: TextStyle(color:Colors.amber)
                  //),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 50, 40, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Menu',
                          style: TextStyle(
                              fontSize: 40,
                              //fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'policetitre'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 20, 0),
                    child: Row(
                      children: <Widget>[
                        SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Color(0xff90DDE2), // button color
                              child: InkWell(
                                splashColor: Colors.green, // splash color
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyProfile()),
                                  );
                                }, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.person), // icon
                                    Text("Profile", style: TextStyle(fontSize: 20)), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox.fromSize(
                                size: Size(100, 100), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Color(0xfffABF84), // button color
                                    child: InkWell(
                                      splashColor: Colors.green, // splash color
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => MyCalendar()),
                                        );
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.calendar_today), // icon
                                          Text("Emploi", style: TextStyle(fontSize: 20)), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                    child: Row(
                      children: <Widget>[
                        SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Color(0xfffABF84), // button color
                              child: InkWell(
                                splashColor: Colors.green, // splash color
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Absence()),
                                  );
                                }, // button pressed
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.assignment_turned_in), // icon
                                    Text("Absence", style: TextStyle(fontSize: 20)), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox.fromSize(
                                size: Size(100, 100), // button width and height
                                child: ClipOval(
                                  child: Material(
                                    color: Color(0xff90DDE2), // button color
                                    child: InkWell(
                                      splashColor: Colors.green, // splash color
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Payement()),
                                        );
                                      }, // button pressed
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.monetization_on), // icon
                                          Text(" payement ", style: TextStyle(fontSize: 20)), // text
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 0, 0),
                    child: Row(
                      children: <Widget>[
                        SizedBox.fromSize(
                          size: Size(100, 100), // button width and height
                          child: ClipOval(
                            child: Material(
                              color: Color(0xff90DDE2), // button color
                              child: InkWell(
                                splashColor: Colors.green, // splash color
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Cours()),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.file_copy_rounded), // icon
                                    Text("Cours", style: TextStyle(fontSize: 20)), // text
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  //Padding(
                  //padding: const EdgeInsets.fromLTRB(240, 10, 0, 10),
                  //child: Container(
                  // width: 200,
                  // height: 100,
                  //decoration: BoxDecoration(
                  //  image: DecorationImage(
                  //  image: AssetImage('assets/dimou.png'),
                  // ),
                  //),
                  //),
                  //),
                ],
              ),
            ),
            //),
          ),
        ),
      ),
    );
  }
}
