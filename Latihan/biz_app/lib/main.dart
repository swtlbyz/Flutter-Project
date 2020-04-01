import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("BizCard"),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(40),
                    width: 400,
                    height: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Bayu Pratama",
                            style:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        Text("bayzpratama7@gmail.com",
                            style: TextStyle(color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.contact_mail,
                              color: Colors.white,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "CP: @swltbyz",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )),
                Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                      width: 120,
                      height: 100,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/proxy/wD7UHHxAgQUG_7H1cD4pW78xRAHW84-5pbOOF13s4N4fDoAB6c6rZ_QSxLmV2Q5tQSVcCGrbLP97A1GLZ_bitd0H1zIsPqXFfGlr8YJrXApm5gxHQR2KM3-B35qWk9mxDmLqRjmEyeMHvpbb_LM3oFxt4kp2W8zUrKVhYu3QrwCVo5gp8WQ1KWfashF-ggDX0f5BbnxyNei74w")),
                )),
              ],
            ),
          )),
    );
  }
}
