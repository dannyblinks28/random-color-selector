import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Management(),
    );
  }
}

class Management extends StatefulWidget {
  const Management({super.key});

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  var colors = [
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.amber,
    Colors.blue,
    Colors.red,
    Colors.black
  ];

  var currentColor = Colors.black;
  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: currentColor,
            width: 400,
            height: 400,
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: setRandomColor),
      ),
    );
  }
}
