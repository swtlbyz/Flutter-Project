import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Widget Hero dan ClipRRect"),
      ),
      body: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Container(
            child: Image(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images8.alphacoders.com/106/thumb-1920-1063782.jpg")),
          ),
        ),
      ),
    );
  }
}
