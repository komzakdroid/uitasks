import 'package:flutter/material.dart';

class ContainerDecorPage extends StatefulWidget {
  static const String id = "container_page";

  const ContainerDecorPage({Key? key}) : super(key: key);

  @override
  _ContainerDecorPageState createState() => _ContainerDecorPageState();
}

class _ContainerDecorPageState extends State<ContainerDecorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "ContainerDecorPage",
          style: TextStyle(color: Colors.cyanAccent),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.mood,
            color: Colors.cyanAccent,
          ),
          SizedBox(
            width: 15,
            height: 15,
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage("assets/images/ic_ronaldo.jpeg"),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 3),
              margin: EdgeInsets.fromLTRB(0, 5, 0, 3),
              child: Text(
                "C.Ronaldo \"Bavariya\"ga o'tadi(mi)?",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
