import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project/new.dart';
import 'package:project/video.dart';
import 'package:project/views/screens/homescreens/continueyourlesson.dart';
import 'package:project/views/screens/homescreens/coursedetail.dart';
import 'package:project/views/screens/homescreens/profilementor.dart';

import 'itemwigets.dart';
import 'progresscontanier.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileMentor()),
                );
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileMentor()),
                  );
                },
                child: CircleAvatar(
                  child: Image.asset(
                    "assets/Ellipse 2046.png",
                    // height: 40,
                    // width: 40,
                  ),
                  radius: 190.0,
                  // backgroundImage: AssetImage("assets/circle.png"),
                  // backgroundColor: Colors.transparent,
                ),
              )),
        ),
        title: Column(
          children: [
            Text(
              "Moheed",
              style: TextStyle(color: Colors.black, fontSize: 17.0),
            ),
            Text(
              "Aziz",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Icon(Icons.notification_add, size: 25, color: Colors.black),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.favorite, size: 25, color: Colors.black),
              ],
            ),
          ),
        ],
      ),

      //  bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
      //   BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.calendar),label: 'Appointment',),
      //   BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History',),
      //   BottomNavigationBarItem(icon: Icon(Icons.article),label: 'Articles',),
      //   BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Profile',),
      // ]),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '  Search',
                  prefix: Icon(Icons.search),
                  suffix: Icon(Icons.filter),
                  // labelText: "Resevior Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

//

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/coding.jpeg",
                      )),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content.png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (2).png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (3).png")),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Coding",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Design",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Marketing",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Bussniess",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (4).png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (5).png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (6).png")),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/Content (7).png")),
                ],
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Lifestyle",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Music",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Academics",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Course()),
                      );
                    },
                    child: Text(
                      "Continue Your Lessons",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Sell All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: ContainerProgress()),

//

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendation Course",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                      onTap: () {
                        // Get.to(LessonScreen());
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //  ItemWidget(),
            ],
          ),
        )),
      ),
    );

//
  }
}
