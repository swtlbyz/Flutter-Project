import 'package:flutter/material.dart';
import 'package:latihan_navigation/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 25),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
                }),
              );
            }),
      ),
    );
  }
}
