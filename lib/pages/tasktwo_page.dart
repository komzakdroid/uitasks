import 'package:flutter/material.dart';

import '../models/User.dart';

class TaskTwoPage extends StatefulWidget {
  static const String id = "tasktwo_page";

  const TaskTwoPage({Key? key}) : super(key: key);

  @override
  _TaskTwoPageState createState() => _TaskTwoPageState();
}

class _TaskTwoPageState extends State<TaskTwoPage> {
  List<User> userList = [
    User("Laurent", "assets/images/ic_ronaldo.jpeg",
        "How about meeting tomorrow?", "20:18"),
    User("Tracy", "assets/images/ic_ronaldo.jpeg",
        "I love that idea, it's great!", "20:18"),
    User("Claire", "assets/images/ic_ronaldo.jpeg",
        "I wasn't aware of that. Let me check", "20:18"),
    User(
        "Joe",
        "assets/images/ic_ronaldo.jpeg",
        "Flutter just release 2.0 officially.\n"
            "Should I go for it?",
        "20:18"),
    User(
        "Mark",
        "assets/images/ic_ronaldo.jpeg",
        "it totally makes sense to get some\n"
            "extra day-off.",
        "20:18"),
    User(
        "Williams",
        "assets/images/ic_ronaldo.jpeg",
        "It has been re-scheduled to next\n"
            "Saturday 7.30pm",
        "20:18"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Messages"),
        centerTitle: true,
        actions: [
          Icon(Icons.mood_rounded),
          SizedBox(
            width: 20,
            height: 20,
          ),
        ],
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.black45,
              ),
          itemCount: 6,
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 25, 0, 0),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userList[index].image),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15.0, top: 25.0),
                              child: Text(
                                userList[index].name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 21),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 15.0, top: 27.0),
                              child: Text(userList[index].time),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Text(
                            userList[index].message,
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.navigate_next)],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
