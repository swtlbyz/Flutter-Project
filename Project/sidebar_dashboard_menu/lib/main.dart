import 'package:flutter/material.dart';
import 'package:sidebardashboardmenu/UI/menu_dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MenuDashboard(),
    );
  }
}
