import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

var count = 0.0;
var dimension = 100.0;

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
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
            angle: -pi / 2,
            child: CustomPaint(
              painter: DrawCircle(),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print('angle');

              Timer.periodic(Duration(milliseconds: 100), (timer) {
                if (count == 360) {
                  count = 0;
                }
                setState(() {

                });
                  count += 10;
              });
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
    var paint = Paint();
    paint.color = Colors.red;

    var paint1 = Paint();
    paint1.color = Colors.white30;

    var secHandX = dimension + 80 * cos(count * 1 * pi / 180);
    var secHandY = dimension + 80 * sin(count * 1 * pi / 180);
    //canvas.drawLine(center,Offset(secHandX,secHandY),secHandBrush);

    canvas.drawCircle(Offset(100, 100), 80, paint1);
    canvas.drawCircle(Offset(secHandX, secHandY), 10, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
