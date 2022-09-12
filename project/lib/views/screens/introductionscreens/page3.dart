import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:project/views/screens/Boottom/bottom.dart';
import 'package:project/views/screens/Boottom/home.dart';
import 'package:project/views/screens/introductionscreens/start.dart';
import 'package:project/views/screens/loginscreens/login.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                  'https://assets7.lottiefiles.com/packages/lf20_DMgKk1.json',
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
                    "Education is a progressive"
                    "\ndiscovery of our own"
                    "\nignorance. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //button()
 Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
        },
        child: Container(
          height: 70,
          width: 330,
          decoration: BoxDecoration(
            color: Color(0xff004A61),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Next',
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
//     MaterialPageRoute(builder: (context) => const Home()),
//   );
//         },
//         child: Container(
//           height: 70,
//           width: 330,
//           decoration: BoxDecoration(
//             color: Color(0xff004A61),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Center(
//             child: Text(
//               'Next',
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
// }


//


//








//