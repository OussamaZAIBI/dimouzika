import 'package:dimouzika/Views/menuItem/absence.dart';
import 'package:dimouzika/Views/menuItem/calendar.dart';
import 'package:dimouzika/Views/menuItem/cours.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:dimouzika/Views/profile/profile.dart';
import 'package:dimouzika/Views/menu/menu.dart';

void main(List<String> args) {
  runApp(Payement());
}

class Payement extends StatefulWidget {
  const Payement({Key? key}) : super(key: key);

  @override
  _PayementState createState() => _PayementState();
}

class _PayementState extends State<Payement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //const Text(
                    //'You have pushed the button this many times:',
                    // ),

                    Container(
                      child: SfCalendar(
                        view: CalendarView.month,
                      ),
                    ),

                    //------------------------------------------------------------------
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Container(
                        width: 400,
                        height: 160,
                        decoration: BoxDecoration(color: Color(0xFFFABF84), borderRadius: const BorderRadius.all(Radius.circular(30)), border: Border.all(color: Colors.black)),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    'Les frais du mois :',
                                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '120 DT',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                                  child: Icon(Icons.monetization_on, size: 60, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //---------------------------------------------------

                    Container(
                      width: 400,
                      height: 160,
                      decoration: BoxDecoration(color: Color(0xFFF2E9E9), borderRadius: const BorderRadius.all(Radius.circular(30)), border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 10, 0, 10),
                                child: Text(
                                  'Vous avez procedé \n au payement le :',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                '03/01/2021',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(35, 10, 0, 0),
                                child: Image.network(
                                  'https://www.juwelo.fr/media/wysiwyg/payer-ses-bijoux-sur-internet.jpg',
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //---------------------------------------------------------
                  ],
                ),
              ),
            ),
          ],
        )),
        //***************************************************************************** */

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
      ),
    );
  }
}
