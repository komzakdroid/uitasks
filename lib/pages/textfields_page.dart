import 'package:flutter/material.dart';
import 'package:uitasks/models/Account.dart';
import 'package:uitasks/pages/profile_page.dart';

class TextFields_Page extends StatefulWidget {
  static const String id = "textfields_page";

  const TextFields_Page({Key? key}) : super(key: key);

  @override
  _TextFields_PageState createState() => _TextFields_PageState();
}

class _TextFields_PageState extends State<TextFields_Page> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  Future _sendAccountInfo(String _email, String _password) async {
    Account account = Account(_email, _password);

    Map transfer = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ProfilePage(account);
    }));
  }

  void doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _sendAccountInfo(_email, _password);
    }
  }

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
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.cyan),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (input) => !input!.contains("@")
                    ? "Please, Enter a valid email"
                    : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    floatingLabelStyle: TextStyle(color: Colors.cyanAccent),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white)),
                validator: (input) =>
                    input!.length < 6 ? 'Must be at least 6 characters' : null,
                onSaved: (input) => _password = input!,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 100, right: 100),
              width: double.infinity,
              height: 40,
              child: FlatButton(
                splashColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.cyanAccent,
                onPressed: () {
                  doSignIn();
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
