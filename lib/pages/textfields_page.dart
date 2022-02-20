import 'package:flutter/material.dart';

class TextFields_Page extends StatefulWidget {
  static const String id = "textfields_page";

  const TextFields_Page({Key? key}) : super(key: key);

  @override
  _TextFields_PageState createState() => _TextFields_PageState();
}

class _TextFields_PageState extends State<TextFields_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.blueAccent,
    );
  }
}
