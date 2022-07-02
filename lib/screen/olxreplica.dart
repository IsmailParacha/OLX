import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/widget/FeaturedProduct.dart';
import 'package:medicalapp/widget/catagorycard.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "OLX",
                style: TextStyle(fontSize: 17.0),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor:
                            Color.fromARGB(255, 221, 219, 219).withOpacity(0.5),
                        radius: 18.0,
                        child: Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        )),
                    Text(
                      " OLX MOTORS",
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor:
                            Color.fromARGB(255, 221, 219, 219).withOpacity(0.5),
                        radius: 18.0,
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        )),
                    Text(
                      " OLX PROPERTY",
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 247, 244, 244),
              child: const TextField(
                decoration: InputDecoration(
                    labelText: "Search location",
                    prefixIcon: Icon(Icons.location_on_outlined),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.arrow_downward_outlined)),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 247, 244, 244),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Find Cars, Mobile Phones and more",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.notification_add_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Browse Catagories",
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 124, 146, 149)),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Color.fromARGB(255, 79, 104, 107),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  catagorycard(
                      Icon(
                        Icons.phone_android_outlined,
                        size: 40.0,
                      ),
                      "Mobile"),
                  catagorycard(
                      Icon(
                        Icons.card_travel_outlined,
                        size: 40.0,
                      ),
                      "Vehical"),
                  catagorycard(
                      Icon(
                        Icons.pets,
                        size: 40.0,
                      ),
                      "Pets"),
                  catagorycard(
                      Icon(
                        Icons.cyclone_outlined,
                        size: 40.0,
                      ),
                      "cyclone"),
                  catagorycard(
                      Icon(
                        Icons.tv_off_outlined,
                        size: 40.0,
                      ),
                      "Electronic"),
                  catagorycard(
                      Icon(
                        Icons.phone_android_outlined,
                        size: 40.0,
                      ),
                      "Mobile"),
                  catagorycard(
                      Icon(
                        Icons.card_travel_outlined,
                        size: 40.0,
                      ),
                      "Vehical"),
                  catagorycard(
                      Icon(
                        Icons.pets,
                        size: 40.0,
                      ),
                      "Pets"),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     color: Color.fromARGB(255, 247, 244, 244),
            //     child: Column(
            //       children: [
            //         Row(
            //           children: [featuredproduct(), featuredproduct()],
            //         ),

            //       ],
            //     ),
            //   ),
            // )
          ],
        ));
  }
}
