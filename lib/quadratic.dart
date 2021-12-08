import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui';

var count = 0.0;
var dimension = 100.0;
var radius=10.0;
var radian=2*math.pi;

class Quadratic extends StatefulWidget {


  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Quadratic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          margin: EdgeInsets.only(left: 50.0),
          width: 300,
          height: 300,
          color: Color(0xFF000000),
          child: Transform.rotate(
            //angle: -math.pi / 2,
            angle: 2*math.pi,
            child: CustomPaint(
              painter: DrawCircle(),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print('angle');
              //Timer.periodic(Duration(milliseconds: 100), (timer) {
              if (count == 360) {
                count = 0;
              }
              setState(() {

              });
              count += 10;
              // });
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
    final path = Path()
      ..moveTo(50, 50)
      ..lineTo(200, 200)
     // ..quadraticBezierTo(200, 0, 150, 100);
    ..quadraticBezierTo(200, 0, 150, 100);
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
