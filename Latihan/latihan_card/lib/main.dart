import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Android Bug"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(text)
        ],
      ),
    );
  }
}
