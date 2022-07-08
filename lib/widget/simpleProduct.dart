import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class simpleProduct extends StatelessWidget {
  final String imagename;
  final String name;
  final String price;
  // final Color color;
  simpleProduct(
    this.imagename,
    this.name,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 220,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/shirtpage'),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "$imagename",
                  fit: BoxFit.fill,
                ),

                //house title
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "$name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Icon(Icons.favorite_outline)
                          ],
                        ),
                        Text(
                          "RS $price",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),

                        //House properties
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     //BATHROOM DETAIL
                        //     Container(
                        //       child: Row(
                        //         children: [
                        //           Icon(Icons.bathroom_outlined),
                        //           Text(" 3")
                        //         ],
                        //       ),
                        //     ),
                        //     //ROM DETAIL
                        //     Container(
                        //       child: Row(
                        //         children: [Icon(Icons.bed_outlined), Text(" 4")],
                        //       ),
                        //     ),
                        //     //HOUSE SPACE DETAIL
                        //     Container(
                        //       child: Row(
                        //         children: [
                        //           Icon(Icons.square_foot_outlined),
                        //           Text("240yard")
                        //         ],
                        //       ),
                        //     ),
                        //   ],
                        // ),

                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text(" SCHEME 33, KARACHI"),
                        ),
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
