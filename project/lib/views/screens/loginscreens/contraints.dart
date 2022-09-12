// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// class Constants {
//   // static String apiKey = "AIzaSyDtnTLx-RlaKVCNkElDA5Yzk-dCGJhw4mo";
//   // static String appId = "1:527070146420:web:9e7cd74aee104d98290621";
//   // static String messagingSenderId = "527070146420";
//   // static String projectId = "flutter-chat-app-fb65b";
//   // ignore: prefer_const_constructors
//   static final priamryColor = Color(0xff004A61);
// }

// // void nextScreen(context, page) {
// //   Navigator.push(
// //     context,
// //     MaterialPageRoute(builder: (context) => page()),
// //   );
// // }

// // void nextScreenReplace(context, page) {
// //   Navigator.pushReplacement(
// //     context,
// //     MaterialPageRoute(builder: (context) => page()),
// //   );
// // }
// Widget textfeild(String text1, String text2, String text3, String image) {
//   return Column(
//     children: [
//       SizedBox(
//         height: 30,
//       ),
//       Padding(
//         padding: const EdgeInsets.only(right: 325),
//         child: Text(text1),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(right: 340),
//         child: Text(
//           text2,
//           style: TextStyle(color: Color(0xff004A61)),
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Container(
//         width: 280,
//         decoration: BoxDecoration(color: Colors.white),
//         child: TextFormField(
//           decoration: InputDecoration(
//               prefixIcon: Image(height: 20, image: AssetImage(image)),
//               hintText: text3),
//         ),
//       )
//     ],
//   );
// }