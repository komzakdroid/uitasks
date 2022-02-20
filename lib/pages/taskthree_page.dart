import 'package:flutter/material.dart';

class TaskThreePage extends StatefulWidget {
  static const String id = "taskthree_page";

  const TaskThreePage({Key? key}) : super(key: key);

  @override
  _TaskThreePageState createState() => _TaskThreePageState();
}

class _TaskThreePageState extends State<TaskThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("BottomNavigationBar"),
          centerTitle: true,
          actions: [
            Icon(Icons.mood_rounded),
            SizedBox(
              width: 20,
              height: 20,
            ),
          ],
        ),
        body: Center(
          child: Text("Home"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(color: Colors.white),
          showSelectedLabels: true,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 15,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Messages',
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
              label: 'Video',
              icon: Icon(Icons.play_circle_outline_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.notifications),
            ),
          ],
        ));
  }
}
