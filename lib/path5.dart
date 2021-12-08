import 'dart:math';
import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:async';

class Path5 extends StatefulWidget {
  @override
  _clockState createState() => _clockState();
}

class _clockState extends State<Path5> {

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


    var paint = Paint();
    paint.color = Colors.red;
    print(size);
    //canvas.drawCircle(Offset(0.0, 0.0), 50, paint);*/

    Path path15 = new Path();
    path15.moveTo(100, 100);
    path15.lineTo(200, 200);
    path15.lineTo(250, 180);
    path15.lineTo(200, 300);
    path15.lineTo(50, 200);
    //canvas.drawPath(path15, paint);

    var secHandBrush=Paint()
      ..color=Colors.black
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round
      ..strokeWidth=8;

    var path = Path();
    path.moveTo(50, 500);
    path.quadraticBezierTo(100, 300, 350, 300);
    canvas.drawPath(path, paint);

    //canvas.drawLine(Offset(0,0),Offset(200,200),secHandBrush);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
