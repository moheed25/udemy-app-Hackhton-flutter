//ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileMentor extends StatelessWidget {
  const ProfileMentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new)),
                    ),
                    Text(
                      "Profile Mentor",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.067),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: <Color>[
                                  Color(0XFFD5F3F0),
                                  Color.fromARGB(255, 237, 250, 249),
                                  Color(0XFFD5F3F0),
                                ]),
                            //color: Color(0XFFD5F3F0),
                            borderRadius: BorderRadius.circular(20)),
                        height: 170,
                        width: 420,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Azamat Baimatov',
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Senior UI/UX Designer',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  SizedBox(width: 50),
                                  Column(
                                    children: [
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Course",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Text(
                                        "17",
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Students",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Text(
                                        "5",
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Reviews",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/Ellipse 2046.png'),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade300,
                ),
                DefaultTabController(
                    length: 3, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              indicatorColor: Colors.green,
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'About'),
                                Tab(text: 'Courses'),
                                Tab(text: 'Reviews'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 400, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Hi My name is Azamat Baimatov, i work as a Senior UI/UX "
                                      "\nDesigner in on of the biggest E-commerce in"
                                      "\nIndonesia, i Have more than 10 years of experience UI/UX"
                                      "\nDesign in Startup & Corporate."
                                      "\n 1 : First we’ll describe the brief & how to work with a UX persona."
                                      "\n 2 : Then you’ll learn how to create simple wireframes."
                                      "\n 3 : From there we’ll look at how to implement colours"
                                      "\n 4 : images properly in your designs.\nYou’ll learn "
                                      "\n 5 : the do’s & don’ts around choosing fonts for web & mobile apps.s"
                                      "\n 6 : You’ll learn how to create your own icons, buttons & other UI components.",
                                      style: TextStyle(
                                        fontFamily: "poppins",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                                // Container(
                                //   child: Center(
                                //     child: Text(
                                //         'Hi My name is Azamat Baimatov, i work \n as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.First we’ll describe the brief & how to work with a UX persona.Then you’ll learn how to create simple wireframes.From there we’ll look at how to implement colours & images properly in your designs.You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.You’ll learn how to create your own icons, buttons & other UI components.',
                                //         style: TextStyle(
                                //             fontSize: 22,
                                //             fontWeight: FontWeight.bold)),
                                //   ),
                                // ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in "
                                      "\non of the biggest E-commerce in Indonesia, i Have more than 10 years"
                                      "\nof experience UI/UX Design in Startup & Corporate.First we will "
                                      "\ndescribe the brief & how to work with a UX persona.Then you will "
                                      "\nlearn how to create simple wireframes.From there we will look at"
                                      "\nhow to implement colours & images properly in your designs nYou will "
                                      "\nlearn the dont & donts around choosing fonts for web & mobile apps.s "
                                      "\nYou will learn how to create your own icons, buttons & other UI components.",
                                      style: TextStyle(
                                        fontFamily: "poppins",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.\nFirst we’ll describe the brief & how to work with a UX persona.\nThen you’ll learn how to create simple wireframes.\nFrom there we’ll look at how to implement colours & images properly in your designs.\nYou’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.s\nYou’ll learn how to create your own icons, buttons & other UI components.",
                                      style: TextStyle(
                                        fontFamily: "poppins",
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ]))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
