// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                      color: Color(0xff06C0AF),
                      borderRadius: BorderRadius.circular(30)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        "My Profile",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors

                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/Ellipse 2046.png'),
                        radius: 50,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 270),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Moheed Aziz",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MoheedAziz@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "General",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            tiles(
                "Personal Data",
                Icon(
                  Icons.person,
                  color: Color(0xff2EC4B6),
                )),
            tiles(
                "Payments",
                Icon(
                  Icons.payment,
                  color: Color(0xff2EC4B6),
                )),
            tiles(
                "Reviews",
                Icon(
                  Icons.reviews,
                  color: Color(0xff2EC4B6),
                )),
            tiles(
                "Certificate",
                Icon(
                  Icons.reviews,
                  color: Color(0xff2EC4B6),
                )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Others",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            tiles(
                "Settings",
                Icon(
                  Icons.settings,
                  color: Color(0xff2EC4B6),
                )),
          ],
        ),
      ),
    );
  }
}

Widget tiles(String text, Icon icon) {
  return Container(
    margin: EdgeInsets.all(20),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      )
    ]),
    child: ListTile(
      leading: icon,
      title: Text(text),
      // subtitle: Text(
      //   "Materi Tekstual",
      //   style: TextStyle(color: Color(0xff14CBD9)),
      // ),
      trailing: Icon(Icons.arrow_forward_ios),
    ),
  );
}
