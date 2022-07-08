import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class shirtpage extends StatefulWidget {
  const shirtpage({Key? key}) : super(key: key);

  @override
  State<shirtpage> createState() => _shirtpageState();
}

class _shirtpageState extends State<shirtpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 5.0,
          actions: <Widget>[
            Icon(Icons.share),
          ]),
      body: ListView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              child: Image.asset('assets/image/cloth.jpg')),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(children: [
                    Text(
                      "Rs 2,000 ",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    // MaterialButton(
                    //   onPressed: () {},
                    //   child: Text("featured"),
                    //   color: Color.fromARGB(255, 237, 207, 39),
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10.0)),
                    // )
                  ]),
                ),
                Icon(Icons.favorite_outline)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Shirt for Sale"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.location_on_outlined),
                    Text("Gulshan-e-Iqbal ,Karachi")
                  ]),
                ),
                Text("08/07/2022")
              ],
            ),
          ),
          Divider(
            thickness: 0.40,
            color: Color.fromARGB(255, 187, 187, 187),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Details",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Type"), Text("Cotton")],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Color"), Text("Black,Brown,Blue")],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Text("New Shirts for Sale"),
                Text("Black,Brown ,Blue and multiple colors are availble"),
                Text("Cotton type"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("See more")],
                )
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/2.jpg'),
                        radius: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User"),
                            Text("Member since Dec 2020"),
                            Text("SEE PROFILE")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ad posted at",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.810,
                  height: MediaQuery.of(context).size.height * 0.180,
                  color: Colors.indigo,
                  child: Text(
                    "GOOGLE MAP",
                    style: TextStyle(
                      color: Colors.white.withOpacity(1.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ad ID 1235462",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Text(
                  "Report This Ad",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
