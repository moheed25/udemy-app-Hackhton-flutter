import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/views/screens/splashscreens/splash3.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
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
            builder: (BuildContext context) => SplashScreen3()),
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
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_oojuetow.json',
                  width: 300,
                  height: 200,
                  fit: BoxFit.fill,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
