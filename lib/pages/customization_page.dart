import 'package:flutter/material.dart';

class CustomizationPage extends StatefulWidget {
  static const String id = "customization_page";

  const CustomizationPage({Key? key}) : super(key: key);

  @override
  _CustomizationPageState createState() => _CustomizationPageState();
}

class _CustomizationPageState extends State<CustomizationPage> {
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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    print("Text clicked!");
                  },
                  child: Text(
                    "Click Me",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 50,
              child: FlatButton(
                splashColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.cyanAccent,
                onPressed: () {
                  print("Button clicked!");
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        )));
  }
}
