import 'package:cos_sinus/addArc.dart';
import 'package:cos_sinus/circle.dart';
import 'package:cos_sinus/path5.dart';
import 'package:cos_sinus/point.dart';
import 'package:cos_sinus/sinus.dart';
import 'package:cos_sinus/sinus1.dart';
import 'package:flutter/material.dart';
import 'package:cos_sinus/deneme.dart';
import 'package:cos_sinus/drawLine.dart';
import 'package:cos_sinus/path1.dart';
import 'package:cos_sinus/path2.dart';
import 'package:cos_sinus/quadratic.dart';

class Scaffold5 extends StatefulWidget {

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Scaffold5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Point(),
      ),
    );
  }
}