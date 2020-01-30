import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.yellow;
  bool isAccepted = false;
  Color targetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Draggable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child:
                        Material(color: Colors.black26, shape: StadiumBorder()),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: Colors.red.withOpacity(0.7),
                        shape: StadiumBorder()),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child:
                    Material(color: Colors.black26, shape: StadiumBorder()),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                        color: color2.withOpacity(0.7),
                        shape: StadiumBorder()),
                  ),
                ),
              ],
            ),
            DragTarget<Colors>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true; targetColor = value as Color;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 350,
                        height: 150,
                        child: Material(
                            color: targetColor, shape: StadiumBorder()),
                      )
                    : SizedBox(
                        width: 350,
                        height: 150,
                        child: Material(
                            color: Colors.black12, shape: StadiumBorder()),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
