import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class catagorycard extends StatelessWidget {
  final Icon icon;
  final Color color;
  final String name;
  // final Color color;
  catagorycard(
    this.icon,
    this.name,
    this.color,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30.0,
            child: icon,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              '$name',
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 124, 146, 149)),
            ),
          )
        ]),
      ),
    );
  }
}
