import 'package:flutter/material.dart';

class MenuDashboard extends StatefulWidget {
  @override
  _MenuDashboardState createState() => _MenuDashboardState();
}

class _MenuDashboardState extends State<MenuDashboard> {
  final Color backgroundColor = Color(0xFF4A4A58);
  double screenWidth, screenHeight;
  final Duration duration = Duration(milliseconds: 200);
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;

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
            SizedBox(height: 20),
            Text(
              "Messages",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              "Utility Bills",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(height: 20),
            Text(
              "Fund Transfer",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(height: 20),
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
      top: isCollapsed ? 0 : 0.09 * screenHeight,
      bottom: isCollapsed ? 0 : 0.10 * screenHeight,
      left: isCollapsed ? 0 : 0.55 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      duration: duration,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        elevation: 10,
        color: backgroundColor,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 13),
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
                      }),
                  Text(
                    "My Cards",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(height: 0.05 * screenHeight),
              Container(
                height: 0.26 * screenHeight,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.redAccent),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blueAccent),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.greenAccent),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
