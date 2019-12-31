import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var angka = 0;

  void tambahAngka() {
    setState(() {
      angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Angka ke-",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 35.0),
              ),
              RaisedButton(
                onPressed: tambahAngka,
                child: Text("Tekan untuk tambah angka"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
