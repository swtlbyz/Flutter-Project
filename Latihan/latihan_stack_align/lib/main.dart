import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack & Align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black45,
                            ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black45,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    )),
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah teks yang berada di bagian tengah stack.",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, 0.75),
              child: RaisedButton(
                  child: Text(
                    "Button",
                    style: TextStyle(fontSize: 15),
                  ),
                  color: Colors.amber,
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
