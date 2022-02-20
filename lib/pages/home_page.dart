import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uitasks/pages/taskthree_page.dart';
import 'package:uitasks/pages/tasktwo_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Task1"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, TaskTwoPage.id);
                },
                color: Colors.cyanAccent,
                child: Text("Task2"),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, TaskThreePage.id);
                },
                color: Colors.cyanAccent,
                child: Text("Task3"),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  color: Colors.blue,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 70, 0, 0),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/ic_ronaldo.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(4, 10, 0, 0),
                      child: Text(
                        "Michel Clerk",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        "Michel@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 35,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.supervised_user_circle_sharp,
                      size: 35,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text(
                      "About us",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
