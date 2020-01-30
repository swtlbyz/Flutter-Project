import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            color: Colors.red,
            child: Image(
              image: NetworkImage(
                  "https://instagram.fcgk23-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/79645475_469703317075661_3690137632862751563_n.jpg?_nc_ht=instagram.fcgk23-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Pep0eEuZ3dsAX-a4dGz&oh=88375a9e73995e4709fc6029171fa3a6&oe=5EAFF74E"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
