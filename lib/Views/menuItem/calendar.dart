import 'package:dimouzika/Views/menuItem/absence.dart';
import 'package:dimouzika/Views/menuItem/cours.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:dimouzika/Views/menu/menu.dart';
import 'package:dimouzika/Views/menuItem/pay.dart';
import 'package:dimouzika/Views/profile/profile.dart';

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
        child: SfCalendar(
          view: CalendarView.day,
        ),
      ),
    );
  }
}
