import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List text = [
    'Physics Course',
    'Chemistry Course',
    ' Data Structure ',
    'Programming ',
    'Mathematics',
    ' Andriod Development ',
    ' Linear ALgebra '
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(children: [
        Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Course Videos",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(text[index].toString()),
                );
              })),
        )
      ]),
    )));
  }
}
