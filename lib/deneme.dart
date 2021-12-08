import 'dart:math';
import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';

class Deneme extends StatefulWidget {
  @override
  _clockState createState() => _clockState();
}

class _clockState extends State<Deneme> {

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
    return Center(
      child: Container(
        color: Color(0xFFFFFF00),
        width: 300,
        height: 300,
        child: Transform.rotate(
          angle: -pi/2,
          child: CustomPaint(
            foregroundPainter: DrawCircle(),
          ),
        ),
      ),
    );
  }
}


class DrawCircle extends CustomPainter {
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

    canvas.drawLine(Offset(0,0),Offset(100,0),secHandBrush);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
