import 'package:dimouzika/Views/menu/menu.dart';
import 'package:dimouzika/Views/menuItem/calendar.dart';
import 'package:dimouzika/Views/menuItem/cours.dart';
import 'package:dimouzika/Views/menuItem/pay.dart';
import 'package:dimouzika/Views/profile/profile.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Absence());
}

class Absence extends StatefulWidget {
  const Absence({Key? key}) : super(key: key);

  @override
  _AbsenceState createState() => _AbsenceState();
}

class _AbsenceState extends State<Absence> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              IconButton(icon: Icon(Icons.file_copy_outlined), color: Colors.orangeAccent, iconSize: 43, onPressed: () {
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
        body: Container(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo4.png"),
                fit: BoxFit.fill,
              ),
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //'You have pushed the button this many times:',style: TextStyle(color:Colors.amber)
                  //),

                  Text(
                    'Mes absences',
                    style: TextStyle(
                      fontSize: 40,
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  //*********************************************************************** */

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                              child: Text(
                                'Prénom : Oussama',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 0, 10),
                              child: Text(
                                'Name : ZAIBI',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  Container(
                    color: Colors.blue[100],
                    padding: EdgeInsets.all(0.0),
                    child: Table(
                      border: TableBorder.all(color: Colors.black),
                      children: [
                        TableRow(children: [
                          Center(
                            child: Text(
                              'Séance ',
                              style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Type',
                              style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Prof',
                              style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Date d\'absence',
                              style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 17),
                            ),
                          ),
                          Text(
                            'Nombre d\'heures',
                            style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 17),
                          ),
                        ]),
                        TableRow(children: [
                          Center(
                            child: Text(
                              'Maqamet',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'ANJ',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'fouaed',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            '1/11/2021\n3/04/2021',
                            style: TextStyle(fontSize: 14),
                          ),
                          Center(
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Center(
                            child: Text(
                              'Violon',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'AJ',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'jassem',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            '1/11/2021\n3/04/2021',
                            style: TextStyle(fontSize: 14),
                          ),
                          Center(
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Center(
                            child: Text(
                              'Chant',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'ANJ',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Aya',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            '2/11/2021\n3/04/2021',
                            style: TextStyle(fontSize: 14),
                          ),
                          Center(
                            child: Text(
                              '0',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  //*********************************************************************** */
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 300, 0),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(80, 0, 1, 0),
                            child: Text(
                              'Il est à noter qu’une absence est \n justifiée si elle se sera déclarée avant \n 48h sinon  elle sera considérée comme \n non justifiée et  sera incluse dans les \n frais du mois !',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                  //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
