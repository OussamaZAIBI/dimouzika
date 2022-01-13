import 'package:dimouzika/Views/menuItem/absence.dart';
import 'package:dimouzika/Views/menuItem/calendar.dart';
import 'package:dimouzika/Views/menuItem/cours.dart';
import 'package:flutter/material.dart';
import 'package:dimouzika/Views/menu/menu.dart';
import 'package:dimouzika/Views/menuItem/pay.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/font.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                child: Text(
                  'Mon Profil',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
          //++++++++++++++++++++Image ++++++++++++++++++++++++++++++++++++++++++
          Align(
            alignment: AlignmentDirectional(0, -0.75),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
              child: Container(
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://raw.githubusercontent.com/OussamaZAIBI/imgs/main/IMG_02062.jpg?token=GHSAT0AAAAAABQPNGJQR5AXQ3MGCNSQFFGOYPISZYA',
                ),
              ),
            ),
          ),

          ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 10),
                child: Text(
                  'Nom :ZAIBI',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 10),
                child: Text(
                  'Prénom :Oussama',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 10),
                child: Text(
                  'E-mail :oussama.zaibi@supcom.tn',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 10),
                child: Text(
                  'Classe :2ème année - violon',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                child: Text(
                  'Date de naissance:    30/08/1999',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

          //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        ]),
      ),
    );
  }
}
