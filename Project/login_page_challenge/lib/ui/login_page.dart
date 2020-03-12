import 'package:flutter/material.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _timeString;

  // Getting current time of clock
  void _getCurrentTime() {
    setState(() {
      _timeString =
          "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
    });
  }

  Widget _backgroundLoginPage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff73aef5),
            Color(0xff61a4f1),
            Color(0xff478de0),
            Color(0xff398ae5),
          ],
              stops: [
            0.1,
            0.4,
            0.7,
            0.9
          ])),
    );
  }

  Widget _notificationIcon() {
    return Container(
      child: Positioned(
        top: MediaQuery.of(context).size.height * 0.07,
        right: MediaQuery.of(context).size.width * 0.07,
        child: InkWell(
          onTap: () {
            setState(() {});
          },
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25.0,
          ),
        ),
      ),
    );
  }

  Widget _profileIcon() {
    return Material(
      elevation: 10,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Container(
        child: Icon(
          Icons.person,
          size: 55.0,
          color: Colors.white,
        ),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurple),
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(bottom: 25),
      ),
    );
  }

  Widget _clock() {
    return Container(
        margin: EdgeInsets.only(bottom: 25),
        child: Text(
          _timeString,
          style: TextStyle(fontSize: 55.0, color: Colors.black, fontFamily: "Montserrat", fontWeight: FontWeight.w700),
        ));
  }

  Widget _takePhotoButton() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.1,
      child: RaisedButton(
        onPressed: () {},
        elevation: 5,
        shape: StadiumBorder(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.camera_alt, color: Colors.white,),
              Text(
                "Tekan Untuk Selfie",
                style: TextStyle(color: Colors.white),
              ),
            ]),
        color: Colors.black54,
      ),
    );
  }

  @override
  // Ticking clock
  void initState() {
    _timeString =
        "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundLoginPage(),
          _notificationIcon(),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _profileIcon(),
                        _clock(),
                        _takePhotoButton(),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
