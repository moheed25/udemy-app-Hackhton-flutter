import 'dart:async';

//import 'package:firebase_login/page1.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project/views/screens/introductionscreens/intro.dart';


class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
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
            builder: (BuildContext context) => Intro()),
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
                  'https://assets5.lottiefiles.com/packages/lf20_dellwkg7.json',
                  width: 300,
                  height: 600,
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
