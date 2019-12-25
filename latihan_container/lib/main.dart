import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(5, 7, 10, 15),
          child: Container(
            margin: EdgeInsets.all(15),
            color: Colors.limeAccent,
          ),
        ),
      ),
    );
  }
}
