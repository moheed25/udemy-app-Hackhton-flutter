import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/views/screens/introductionscreens/start.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Selamat Datang!",
                        style: TextStyle(
                          color: Color(0xff004A61),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Masukan NISN dan password untuk\nmemulai belajar sekarang",
                        style: TextStyle(
                          color: Color(0xff004A61),
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "NISN",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(color: Colors.white),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Image(
                                  height: 20,
                                  image: AssetImage('assets/pic1.jfif')),
                              hintText: 'Nomor NISN'),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(color: Colors.white),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Image(
                                  height: 20,
                                  image: AssetImage('assets/pic2.jfif')),
                              hintText: 'Masukkan Password'),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Color(0xff004A61),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Start()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
