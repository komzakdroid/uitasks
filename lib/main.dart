import 'package:flutter/material.dart';
import 'package:uitasks/models/Account.dart';
import 'package:uitasks/pages/profile_page.dart';
import 'package:uitasks/pages/textfields_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Account account = Account.empty();
    return MaterialApp(
        home: TextFields_Page(),
        debugShowCheckedModeBanner: false,
        routes: {
          TextFields_Page.id: (context) => TextFields_Page(),
          ProfilePage.id: (context) => ProfilePage(account),
        });
  }
}
