import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:percent_indicator/percent_indicator.dart';

class ContainerProgress extends StatelessWidget {
  const ContainerProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(246, 208, 255, 0),
              Color(0xFF2EC4B6),
              // Colors.red,
            ],
          )),
      width: 400,
      //width: MediaQuery.of(context).size.width,
      height: 180,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 25),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(30),
                // color: Colors.pink,
                ),
            width: 180,
            height: 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ongoing . 22/32",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "BASIC UI/UX Designer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "by Azamat balmatav",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff004A61),
                  ),
                  width: 120,
                  height: 40,
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(30),
                  // color: Colors.pink,
                  ),
              width: 120,
              height: 200,
              child: Center(
                  // child: CircularPercentIndicator(
                  //   percent: 0.0,
                  // radius: 70 ,backgroundColor: Colors.white,
                  // progressColor: Colors.lightBlue,

                  // // percent: ,
                  // lineWidth: 30,
                  // center: Text("75%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                  // )
                  ))
        ],
      ),
    );
  }
}
