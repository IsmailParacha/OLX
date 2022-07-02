import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class featuredproduct extends StatelessWidget {
  const featuredproduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/image/1.jpg",
                  width: 180,
                  height: 180,
                  fit: BoxFit.fill,
                ),

                //house title
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 10.0, color: Colors.yellow))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Portion for rent",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            Icon(Icons.favorite_outline)
                          ],
                        ),
                        Text(
                          "RS 50,000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),

                        //House properties
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //BATHROOM DETAIL
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.bathroom_outlined),
                                  Text(" 3")
                                ],
                              ),
                            ),
                            //ROM DETAIL
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.bed_outlined),
                                  Text(" 4")
                                ],
                              ),
                            ),
                            //HOUSE SPACE DETAIL
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.square_foot_outlined),
                                  Text("240yard")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(" SCHEME 33, KARACHI"),
                            Text(" 01 JUL")
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
