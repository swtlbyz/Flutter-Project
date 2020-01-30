import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    icon: Icon(Icons.adb),
                    prefixIcon: Icon(Icons.person),
                    labelText: "Nama Lengkap",
                    hintText: "Masukan nama lengkap anda"),
//                obscureText: true, // untuk menyembunyikan karakter, spt password
                maxLength: 30,
                // untuk mengatur maks teks yang bisa diketik
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              RaisedButton(
                  child: Text("Tekan di sini"),
                  onPressed: () {
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
