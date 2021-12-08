import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui';

var count = 0.0;
var dimension = 100.0;
var radius = 100.0;
var radian = 2 * math.pi;

class Sinus1 extends StatefulWidget {
  const Sinus1({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Sinus1> {
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

    int i=0;
    var paint = Paint();
    paint.color = Colors.red;

    var paint1 = Paint();
    paint1.color = Colors.white30;

    var paint2 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var paint3 = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4;

    Offset center = Offset(0, size.height / 2);
    //Offset startPoint = Offset(i.toDouble(), radius * math.sin((radian / 360) * i));
    Offset startPoint = Offset(i.toDouble(), radius * math.sin((radian / 360) * i));


    final path = Path();
    path.moveTo(startPoint.dx + center.dx, startPoint.dy + 150);
    for ( i = 0; i <= 360; i+=10) {
      double x = center.dx + i;
      double y = radius * math.sin((radian / 360) * i) + center.dy;
        path.lineTo(x, y);
        //print(x);
    }
   /* if (count<=180) {
      double x = center.dx + count;
      double y = radius * math.sin((radian / 360) * count) + center.dy;
      path.lineTo(x, y);
    }*/
    path.close();
      canvas.drawPath(path, paint2);

    canvas.drawLine(Offset(0.0, 150.0), Offset(400, 150), paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
