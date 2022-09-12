// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 350,
//                   decoration: BoxDecoration(
//                       color: Color(0xff06C0AF),
//                       borderRadius: BorderRadius.circular(30)),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 30,
//                     top: 50,
//                   ),
//                   child: Row(
//                     children: [
//                       Text(
//                         "My Profile",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         width: 250,
//                       ),
//                       Icon(Icons.abc, color: Colors.white)
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 155, top: 150),
//                   child: CircleAvatar(
//                     radius: 50,
//                   ),
//                 ),
//                 Padding(
//                     padding: const EdgeInsets.only(left: 160, top: 270),
//                     child: Text(
//                       "Moheed Aziz",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )),
//                 Padding(
//                     padding: const EdgeInsets.only(left: 140, top: 300),
//                     child: Text(
//                       "MoheedAziz@gmail.com",
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     )),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 children: [
//                   Text(
//                     "General",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             tiles(),
//             tiles(),
//             tiles(),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 children: [
//                   Text(
//                     "Others",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             tiles(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget tiles() {
//   return Container(
//     margin: EdgeInsets.all(20),
//     decoration:
//         BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
//       BoxShadow(
//         color: Colors.white.withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 7,
//         offset: Offset(0, 3),
//       )
//     ]),
//     child: ListTile(
//       leading: CircleAvatar(
//         // backgroundColor: Colors.white,
//         backgroundImage: AssetImage(
//           'assets/Ellipse 2046.png',
//         ),
//       ),
//       title: Text("Kompetensi Inti"),
//       subtitle: Text(
//         "Materi Tekstual",
//         style: TextStyle(color: Color(0xff14CBD9)),
//       ),
//       trailing: Icon(Icons.arrow_circle_right),
//     ),
//   );
// }
