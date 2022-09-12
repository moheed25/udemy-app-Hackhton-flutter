import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Container(
            alignment: Alignment(0.27, 0.89),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                    controller: _controller, // PageController
                    count: 3,
                    effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 30,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black), // your preferred effect
                    onDotClicked: (index) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
