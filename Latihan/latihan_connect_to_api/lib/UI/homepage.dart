import 'package:flutter/material.dart';
import 'package:latihanconnecttoapi/Models/post_result_model.dart';
import 'package:latihanconnecttoapi/Models/user_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiPostResult postResult;
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Hasil Dari API", style: TextStyle(fontSize: 26)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  (user != null)
                      ? user.id + " | " + user.name
                      : "Tidak ada DATA",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    child: Text("POST"),
                    onPressed: () {
                      ApiPostResult.connectToApi("Bayu", "Developer")
                          .then((value) {
                        postResult = value;
                        setState(() {});
                      });
                    }),
                RaisedButton(
                  child: Text("GET"),
                  onPressed: () {
                    User.connectToAPI("10").then((value) {
                      user = value;
                      setState(() {});
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
