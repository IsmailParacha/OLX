import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/screen/productpage.dart';

class featuredproduct extends StatelessWidget {
  final String imagename;
  final String name;
  final String price;
  final String link;
  // final Color color;
  featuredproduct(
    this.imagename,
    this.name,
    this.price,
    this.link,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 218,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '$link'),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      '$imagename',
                      fit: BoxFit.fill,
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 40.0,
                          height: 30.0,
                          child: Text(
                            "FEATURED",
                            style: TextStyle(fontSize: 11.0),
                          ),
                          color: Color.fromARGB(255, 237, 207, 39),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                        ),
                      ),
                    ))
                  ],
                ),

                //house title
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              width: 10.0,
                              color: Color.fromARGB(255, 237, 207, 39)))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Icon(Icons.favorite_outline)
                          ],
                        ),
                        Text(
                          "Rs $price",
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

                        Text(" SCHEME 33, KARACHI"),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
