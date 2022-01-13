import 'package:dimouzika/Views/menuItem/absence.dart';
import 'package:flutter/material.dart';
import 'package:dimouzika/Views/profile/profile.dart';
import 'package:dimouzika/Views/menu/menu.dart';
import 'package:dimouzika/Views/menuItem/calendar.dart';
import 'package:dimouzika/Views/menuItem/pay.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Cours());
}

class Cours extends StatefulWidget {
  const Cours({Key? key}) : super(key: key);

  @override
  _CoursState createState() => _CoursState();
}

class _CoursState extends State<Cours> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //'You have pushed the button this many times:',style: TextStyle(color:Colors.amber)
                  //),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      'Support de cours solfége',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[400],
                          //fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'policetitre'),
                    ),
                  ),

                  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 20, 35, 10),
                            child: Image.asset(
                              'assets/solf1.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 30, 10),
                            child: Image.asset(
                              'assets/solf2.jpg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                        child: Image.asset(
                          'assets/solf3.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Maqamet            Intervalles               Chant       ", style: TextStyle(fontSize: 15)),
                  ),

                  new InkWell(
                    onTap: () => launch('https://drive.google.com/drive/folders/1xGd1vr6ABHSpO2g8ecKyqKYEWAWlbXE_?usp=sharing'),
                    child: new Container(
                      width: 140.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Télécharger',
                          style: new TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      'Support de cours Instrument',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[400],
                          //fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'policetitre'),
                    ),
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 35, 10),
                            child: Image.asset(
                              'assets/inst1.jpg',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 30, 10),
                        child: Image.asset(
                          'assets/inst 2.jpg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                        child: Image.asset(
                          'assets/inst3.jpg',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("guitare                     violon                    brouva       ", style: TextStyle(fontSize: 15)),
                  ),
                  new InkWell(
                    onTap: () => launch('https://drive.google.com/drive/folders/1xGd1vr6ABHSpO2g8ecKyqKYEWAWlbXE_?usp=sharing'),
                    child: new Container(
                      width: 140.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Télécharger',
                          style: new TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                ],
              ),
            ),
            //),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal[50],
          child: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.orangeAccent,
                  iconSize: 43,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.orangeAccent,
                  iconSize: 43,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfile()),
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.calendar_today),
                  color: Colors.orangeAccent,
                  iconSize: 43,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCalendar()),
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.attach_money),
                  color: Colors.orangeAccent,
                  iconSize: 43,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Payement()),
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.file_copy_outlined),
                  color: Colors.orangeAccent,
                  iconSize: 43,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cours()),
                    );
                  }),
              IconButton(icon: Icon(Icons.check_box), color: Colors.orangeAccent, iconSize: 43, onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Absence()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
