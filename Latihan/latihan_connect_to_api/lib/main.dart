import 'package:flutter/material.dart';
import 'UI/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Connect API Demo"),
        ),
        body: HomePage(),
      ),
    );
  }
}
