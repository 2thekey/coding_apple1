import 'package:flutter/material.dart';
import 'package:coding_apple1/home1.dart';


class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(num[1][1].toString()),
    );
  }
}
