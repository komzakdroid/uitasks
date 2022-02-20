import 'package:flutter/material.dart';
import 'package:uitasks/pages/textfields_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: TextFields_Page(),
        debugShowCheckedModeBanner: false,
        routes: {
          TextFields_Page.id: (context) => TextFields_Page(),
        });
  }
}
