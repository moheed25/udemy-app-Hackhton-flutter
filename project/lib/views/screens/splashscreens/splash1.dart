import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:project/views/screens/splashscreens/splash2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // ignore: prefer_const_constructors
    Timer(
      // ignore: prefer_const_constructors
      Duration(
        seconds: 5,
      ),
      () => Navigator.of(context).push(
        MaterialPageRoute(
            // ignore: prefer_const_constructors
            builder: (BuildContext context) => SplashScreen2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_Q895iE.json',
                  width: 300,
                  height: 500,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "HELLO.... ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
