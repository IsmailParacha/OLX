import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.indigo,
          title: Text(
            "Chats",
            // style: TextStyle(color: Colors.black),
          ),
          // backgroundColor: Colors.white,
          elevation: 0,
          bottom:
              TabBar(indicatorColor: Colors.white, indicatorWeight: 5, tabs: [
            Tab(text: "ALL"),
            Tab(text: "BUYING"),
            Tab(text: "SELLING"),
          ]),
        ),
        body: TabBarView(children: [ALL(), buying(), selling()]),
      ),
    );
  }
}

Widget ALL() {
  return ListView(
    children: [
      message(),
      message(),
      message(),
      message(),
      message(),
      message(),
    ],
  );
}

Widget buying() {
  return ListView(
    children: [
      message(),
      message(),
      message(),
    ],
  );
}

Widget selling() {
  return Padding(
    padding: const EdgeInsets.only(top: 280.0),
    child: ListView(
      children: [
        Column(
          children: [
            Lottie.network(
                'https://assets8.lottiefiles.com/private_files/lf30_z588h1j0.json'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "No Message yet?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "We'll keep messages for any items \n you're selling in here",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color.fromARGB(255, 10, 22, 33),
                  child: Text(
                    "Start selling",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget message() {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
    child: Column(
      children: [
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text("6 Jul")],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 40,
                  child: Image(image: AssetImage("assets/image/1.jpg"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "OLX USER",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("House availble for rent"),
                    ),
                    Text("message")
                  ],
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Icon(Icons.more_vert_outlined)],
        )
      ],
    ),
  );
}
