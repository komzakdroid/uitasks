import 'package:flutter/material.dart';

import '../models/Account.dart';

class ProfilePage extends StatefulWidget {
  Account account;
  static const String id = "profile_page";

  ProfilePage(this.account);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(
          "Customization Page",
          style: TextStyle(color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(
            Icons.mood_rounded,
            color: Colors.cyanAccent,
          ),
          SizedBox(
            width: 15,
            height: 15,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi, Welcome:",
                style: TextStyle(color: Colors.pinkAccent, fontSize: 25)),
            Text(
              "${widget.account.email}",
              style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
            ),
            Text(
              "${widget.account.password}",
              style: TextStyle(color: Colors.cyanAccent, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
