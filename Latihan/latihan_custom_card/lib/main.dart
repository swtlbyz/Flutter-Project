import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8C062F),
          title: Text(
            "Latihan Custom Card",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
