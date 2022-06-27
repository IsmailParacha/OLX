import 'package:flutter/material.dart';
import 'package:medicalapp/slider.dart';
import './myhome.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: slider(),
    );
  }
}
