// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class Detail extends StatefulWidget {
//   const Detail({super.key});

//   @override
//   State<Detail> createState() => _DetailState();
// }

// class _DetailState extends State<Detail> {
//   late VideoPlayerController _controller;
//   late Future _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//       '',
//     );
//     _initializeVideoPlayerFuture = _controller.initialize();

//     _controller.setLooping(true);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Icon(Icons.arrow_back),
//                 SizedBox(
//                   width: 240,
//                 ),
//                 Icon(Icons.share),
//                 SizedBox(
//                   width: 25,
//                 ),
//                 Icon(Icons.shield_sharp),
//               ],
//             ),
//             FutureBuilder(
//               future: _initializeVideoPlayerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return AspectRatio(
//                     aspectRatio: _controller.value.aspectRatio,
//                     child: VideoPlayer(_controller),
//                   );
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   // pause
//                   if (_controller.value.isPlaying) {
//                     _controller.pause();
//                   } else {
//                     // play
//                     _controller.play();
//                   }
//                 });
//               },
//               // icon
//               child: Icon(
//                 _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project/views/screens/homescreens/tab1.dart';
import 'package:project/views/screens/homescreens/tab2.dart';
import 'package:project/views/screens/homescreens/tab3.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(Icons.share),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(Icons.shield_sharp),
                  ],
                ),

                // Row(children: [
                //   _controller.value.isInitialized
                //       ? AspectRatio(
                //           aspectRatio: _controller.value.aspectRatio,
                //           child: VideoPlayer(_controller),
                //         )
                //       : Container(),
                // ]),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       _controller.value.isPlaying
                //           ? _controller.pause()
                //           : _controller.play();
                //     });
                //   },
                //   child: Icon(
                //     _controller.value.isPlaying
                //         ? Icons.pause
                //         : Icons.play_arrow,
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/vido.jpg"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Basic UI/UX Designer",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/Union.png"),
                    Image.asset("assets/Union.png"),
                    Image.asset("assets/Union.png"),
                    Image.asset("assets/Union.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "(534)",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(color: Color(0xffD5F3F0)),
                      child: Center(
                        child: Text(
                          "Basic UI/UX Designer",
                          style: TextStyle(
                            color: Colors.green,
                            //fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffD5F3F0),
                      child: Image.asset("assets/Subtract.png"),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "\$145",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Created by Moheed ",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.person,
                    ),
                    Text(
                      "1203 Members",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.circle_notifications),
                    Text(
                      "Certificate",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.video_call),
                    Text(
                      "42 Lesson",
                      style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            indicatorColor: Colors.green,
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: 'Details'),
                              Tab(text: 'Lessons'),
                              Tab(text: 'Reviews'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 400, //height of TabBarView
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.5))),
                            child: TabBarView(children: <Widget>[
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Course",
                                          style: TextStyle(
                                            fontFamily: "poppins",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReadMoreText(
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step."
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step.",
                                          trimLines: 4,
                                          colorClickableText: Color(0xff2EC4B6),
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'Read more',
                                          trimExpandedText: 'Read less',
                                          moreStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                          lessStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 199, 228, 225),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Icon(
                                                    Icons.badge_rounded,
                                                    color: Color(0xff2EC4B6),
                                                  ),
                                                  Text(
                                                    "Add to Cart",
                                                    style: TextStyle(
                                                      color: Color(0xff2EC4B6),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                                height: 60,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 87, 199, 187),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "But Now \$145",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Course",
                                          style: TextStyle(
                                            fontFamily: "poppins",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReadMoreText(
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step."
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step.",
                                          trimLines: 4,
                                          colorClickableText: Color(0xff2EC4B6),
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'Read more',
                                          trimExpandedText: 'Read less',
                                          moreStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                          lessStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Course",
                                          style: TextStyle(
                                            fontFamily: "poppins",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReadMoreText(
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step."
                                          "This course is aimed at people new to design, new to "
                                          "\nUser Experience design. Even if you’re not totally"
                                          "\nsure what UX really means, don’t worry. We’ll start"
                                          "\nright at the beginning and work our way through step by step.",
                                          trimLines: 4,
                                          colorClickableText: Color(0xff2EC4B6),
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText: 'Read more',
                                          trimExpandedText: 'Read less',
                                          moreStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                          lessStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2EC4B6),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]))
                      ]),
                ),
              ]),
            )));
  }
}
