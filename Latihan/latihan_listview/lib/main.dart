import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

List<Widget> widgets = [];
int counter = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan List View"),
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 30),
                        ));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus data"),
                  )
                ],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets)
            ],
          )),
    );
  }
}
