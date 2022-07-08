import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicalapp/widget/FeaturedProduct.dart';
import 'package:medicalapp/widget/catagorycard.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../widget/simpleProduct.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  // int _selectedIndex = 0;
  // void _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.indigo,
          activeColor: Colors.white,
          color: Colors.grey,
          items: [
            TabItem(
              icon: Icons.home,
              title: 'HOME',
            ),
            TabItem(icon: Icons.chat, title: 'CHATS'),
            TabItem(icon: Icons.add, title: 'SELL'),
            TabItem(icon: Icons.favorite_outline, title: 'MY ADS'),
            TabItem(icon: Icons.person, title: 'ACCOUNT'),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => {
            print('Bottom navigation  index=$i'),
            if (i == 4) {Navigator.pushNamed(context, '/login')}
          },
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        body: ListView(
          shrinkWrap: true,
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
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  catagorycard(
                      Icon(
                        Icons.phone_android_outlined,
                        size: 40.0,
                      ),
                      "Mobile",
                      Color.fromRGBO(237, 207, 39, 1)),
                  catagorycard(
                      Icon(
                        Icons.card_travel_outlined,
                        size: 40.0,
                      ),
                      "Vehical",
                      Colors.indigo),
                  catagorycard(
                      Icon(
                        Icons.pets,
                        size: 40.0,
                      ),
                      "Pets",
                      Color.fromARGB(255, 150, 98, 79)),
                  catagorycard(
                      Icon(
                        Icons.cyclone_outlined,
                        size: 40.0,
                      ),
                      "cyclone",
                      Color.fromARGB(255, 54, 244, 203)),
                  catagorycard(
                      Icon(
                        Icons.tv_off_outlined,
                        size: 40.0,
                      ),
                      "Electronic",
                      Color.fromARGB(255, 54, 120, 244)),
                  catagorycard(
                      Icon(
                        Icons.phone_android_outlined,
                        size: 40.0,
                      ),
                      "Mobile",
                      Colors.indigo),
                  catagorycard(
                      Icon(
                        Icons.card_travel_outlined,
                        size: 40.0,
                      ),
                      "Vehical",
                      Color.fromRGBO(237, 207, 39, 1)),
                  catagorycard(
                      Icon(
                        Icons.pets,
                        size: 40.0,
                      ),
                      "Pets",
                      Color.fromARGB(255, 133, 89, 73)),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: featuredproduct("assets/image/1.jpg",
                        "Portion for sale", "9000", "/productpage")),
                Expanded(
                    child: featuredproduct("assets/image/pet.jpg",
                        "Pet shop for sale", "10,000", '/parrotpage')),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: featuredproduct("assets/image/house.jpg",
                        "Portion for Rent", "15,000", "/productpage")),
                Expanded(
                    child: simpleProduct(
                        "assets/image/cloth.jpg", "Shirt for sale", "40,000")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: simpleProduct(
                        "assets/image/cloth.jpg", "Cloth for men", "2,000")),
                Expanded(
                    child: simpleProduct(
                        "assets/image/shoes.jpg", "Shoes for men", "4,000")),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: simpleProduct(
                        "assets/image/chair.jpg", "Pair Of chair", "10,000")),
                Expanded(
                    child: featuredproduct("assets/image/commercail.jpg",
                        "Commercial space", "5,00000", "/productpage")),
              ],
            )
          ],
        ));
  }
}
