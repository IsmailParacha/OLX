import 'package:flutter/material.dart';
import 'package:medicalapp/screen/login.dart';
import 'package:medicalapp/slider.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => login(),
        '/home': (context) => slider(),
      },
      home: login(),
    );
  }
}
