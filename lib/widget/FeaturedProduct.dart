import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class featuredProduct extends StatefulWidget {
  const featuredProduct({Key? key}) : super(key: key);

  @override
  State<featuredProduct> createState() => _featuredProductState();
}

class _featuredProductState extends State<featuredProduct> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: 120.0,
        width: 120.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/car.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      )
    ]);
  }
}
