import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String pesan = "Ini adalah text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(pesan),
              RaisedButton(
                child: Text("Tekan saya"),
                onPressed: (){
                  setState(() {
                    pesan = "Tombol sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
