import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
            IconButton(icon: Icon(Icons.attach_money), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.file_copy_outlined), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.check_box), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/font.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Positioned(
                right: 40,
                top: 40,
                width: 80,
                height: 150,
                child: Center(
                  child: Text('Home page', style: TextStyle(color: Colors.black, fontSize: 30.0)),
                )),
          ],
        ),
      ),
    );
  }
}

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
                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
            IconButton(icon: Icon(Icons.attach_money), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.file_copy_outlined), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.check_box), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/font.png"),
            fit: BoxFit.cover,
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9xhi8dkApcxc2ARiv2GFNr1EpR94Y0T1WCQ&usqp=CAU',
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
                  'Nom :Jhon',
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
                  'Prénom :Laos',
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
                  'E-mail :johnlaos@gmail.com',
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
                  'Date de naissance:    17/04/2003',
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

class MyCalendar extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => MyHomePage()),
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
            IconButton(icon: Icon(Icons.attach_money), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.file_copy_outlined), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
            IconButton(icon: Icon(Icons.check_box), color: Colors.orangeAccent, iconSize: 43, onPressed: () {}),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/font.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SfCalendar(
          view: CalendarView.day,
        ),
      ),
    );
  }
}
