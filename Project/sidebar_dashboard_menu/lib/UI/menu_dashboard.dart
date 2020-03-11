import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xFF4A4A58);

bool isCollapsed = true;


class MenuDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }
}


Widget menu(context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Dashboard",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "Messages",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "Utility Bills",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "Fund Transfer",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          SizedBox(height: 10),
          Text(
            "Branches",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ],
      ),
    ),
  );
}

Widget dashboard(context) {
  return AnimatedPositioned(
    top: 0,
    bottom: 0,
    left: 0,
    right: 0,
    child: Material(
      elevation: 8.0,
      color: backgroundColor,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onTap: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
                Text(
                  "My Cards",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}