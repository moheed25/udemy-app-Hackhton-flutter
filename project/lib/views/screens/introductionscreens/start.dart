import 'package:flutter/material.dart';
import 'package:project/views/screens/Boottom/bottom.dart';

//import 'package:project/views/screens/bottomnavigate/home.dart';



class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Image.asset("assets/Rectangle 118 (1).png")),
                Positioned(
                    top: 40,
                    right: 90,
                    child: Image.asset("assets/AiLearn.png")),
                Positioned(
                    right: 24,
                    top: 130,
                    child: Image.asset("assets/Frame (1).png"))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Perangkat Lunak"
                    "\nPengolah Gambar Vektor",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Jelajahi AiLearn untuk  "
                    "\nmenambah kemampuanmu"
                    "alam mengoperasikan"
                    "\nAdobe Illustrator",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),
            // SizedBox(
            //   height: 10,
            // ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavigation()),
                    );
                  },
                  child: Container(
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//

// Widget button() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       GestureDetector(
//         onTap: () {
//           Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) =>  Detail()),
//   );
//         },
//         child: Container(
//           height: 90,
//           width: 330,
//           decoration: BoxDecoration(
//             color: Color(0xff004A61),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(
//             child: Text(
//               'Continue',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 30,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );



//