import 'dart:math';
import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';

class Drawline extends StatefulWidget {
  @override
  _clockState createState() => _clockState();
}

class _clockState extends State<Drawline> {

  /* @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {

      });
    });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            return CustomPaint(
              painter: MyPainter(),
              size: Size(constraints.maxWidth,constraints.maxHeight),
            );
          }),
    );

  }
}


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {



    var secHandBrush=Paint()
      ..color=Colors.black
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round
      ..strokeWidth=8;

    /* var paint = Paint();
    paint.color = Colors.red;
    print(size);
    //canvas.drawCircle(Offset(0.0, 0.0), 50, paint);*/

    canvas.drawLine(Offset(0,0),Offset(200,200),secHandBrush);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
