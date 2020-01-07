import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Spacer Widget"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(flex: 1),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Spacer(flex: 3),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Spacer(flex: 6),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
