import 'dart:async';

import 'package:exam_10_02_2023/addScreen.dart';
import 'package:exam_10_02_2023/editScreen.dart';
import 'package:exam_10_02_2023/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => Spleshscreen(),
      'home': (context) => Homescreen(),
      'editscreen': (context) => Editscreen(),
      'addscreen': (context) => Addscreen(),
    }),
  );
}


class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, 'home');
    },);
    return Scaffold(body: Center(child: Icon(Icons.all_inclusive,color: Colors.green,size: 150,)),);
  }
}
