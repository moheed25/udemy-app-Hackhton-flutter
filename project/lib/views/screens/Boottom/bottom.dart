
import 'package:flutter/material.dart';
import 'package:project/views/screens/Boottom/profile.dart';
import 'package:project/views/screens/Boottom/home.dart';
import 'package:project/views/screens/Boottom/profile.dart';
import 'package:project/views/screens/Boottom/videos.dart';

import 'package:project/views/screens/Boottom/like.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen =  Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home,
                        color: currentTab == 0 ? Color(0xff2EC4B6) : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Videos();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.shop,
                        color: currentTab == 1 ? Color(0xff2EC4B6) : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Like();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: currentTab == 2 ? Color(0xff2EC4B6) : Colors.black)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 3 ? Color(0xff2EC4B6) : Colors.black)),
              ]),
        ),
      ),
    );
  }
}