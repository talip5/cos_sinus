import 'package:flutter/material.dart';
import 'package:cos_sinus/circle.dart';
import 'package:cos_sinus/scaffold5.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gradient Circle Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold5(),
    );
  }
}

