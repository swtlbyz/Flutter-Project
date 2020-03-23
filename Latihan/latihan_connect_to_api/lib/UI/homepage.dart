import 'package:flutter/material.dart';
import 'package:latihanconnecttoapi/Models/post_result_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiPostResult postResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Hasil Dari API", style: TextStyle(fontSize: 26)),
            Text(
              (postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job +
                      " | " +
                      postResult.created
                  : "Tidak ada DATA",
              style: TextStyle(fontSize: 20),
            ),
            RaisedButton(
                child: Text("POST"),
                onPressed: () {
                  ApiPostResult.connectToApi("Bayu", "Developer").then((value) {
                    postResult = value;
                    setState(() {});
                  });
                })
          ],
        ),
      ),
    );
  }
}
