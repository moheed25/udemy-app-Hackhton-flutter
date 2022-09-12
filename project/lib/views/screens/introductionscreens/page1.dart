import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets10.lottiefiles.com/private_files/lf30_TBKozE.json',
                  width: 300,
                  height: 400,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "The whole purpose of"
                    "\neducation is to trun"
                    "\nmirrors into windows. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
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

Widget button() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 90,
        width: 330,
        decoration: BoxDecoration(
          color: Color(0xff004A61),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Continue',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
    ],
  );
}
