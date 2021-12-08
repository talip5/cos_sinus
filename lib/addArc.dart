import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';

var count = 0.0;
var dimension = 100.0;
var radius = 100.0;
var radian = 2 * math.pi;

class AddArc extends StatefulWidget {

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<AddArc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          width: 400,
          height: 300,
          color: Color(0xFF000000),
          child: Transform.rotate(
            //angle: -math.pi / 2,
            angle: 2 * math.pi,
            child: CustomPaint(
              painter: DrawCircle(),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(count);
              //Timer.periodic(Duration(milliseconds: 1), (timer) {
              if (count == 180) {
                count = 0;
              }
              setState(() {

              });
              count += 10;
              //});
            },
            child: Text('Step')),
        ElevatedButton(
            onPressed: () {
              print('angle');
              if (count == 360) {
                count = 0;
              }
              count += 10;
            },
            child: Text('Stop')),
      ],
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (math.pi / 180.0);

    Path path = Path();
    // Adds a quarter arc
    path.addArc(Rect.fromLTWH(50, 50, size.width/2, size.height/2), math.pi, math.pi/2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
