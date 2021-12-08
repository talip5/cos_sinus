import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

var count = 0.0;
var count1 = 0.0;
var dimension = 150.0;

class Sinus extends StatefulWidget {
  const Sinus({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Sinus> {
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
            angle:2*pi,
            child: CustomPaint(
              painter: DrawCircle(),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print('angle');

              Timer.periodic(Duration(milliseconds: 10), (timer) {
                if (count == 360) {
                  count = 0;
                }
                setState(() {});
                count += 1;
              });
            },

            child: Text('Step')),
        ElevatedButton(
            onPressed: () {
              Timer.periodic(Duration(milliseconds: 1), (timer) {
                setState(() {});
                if (count1 == 90 || count1 < 90) {
                  count -= 10;
                }

                count1 += 10;
              });
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

    var paint5 = Paint()
      ..color = Colors.orange.shade300
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    var paint1 = Paint();
    paint1.color = Colors.white30;

    var secHandBrush=Paint()
      ..color=Colors.black
      ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round
      ..strokeWidth=8;

    //var secHandX = dimension + 80 * cos(count * 1 * pi / 180);
    //var secHandY = dimension + 80 * sin(count * 1 * pi / 180);

    var secHandX = count;
    var secHandY = dimension + 90 * sin(count  * pi / 180);

    canvas.drawCircle(Offset(secHandX, secHandY), 5, paint);

    canvas.drawLine(Offset(0.0,150.0), Offset(400,150), paint5);

   /* Offset center = Offset(size.width / 2, size.height / 2);
    Offset startPoint =
    Offset(radius * math.cos(radians), radius * math.sin(radians));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(radians + angle * i) + center.dx;
      double y = radius * math.sin(radians + angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();
    canvas.drawPath(path, paint);
*/

   // Offset center = Offset(size.width / 2, size.height / 2);
    // var secHandX1 = count1;
    // var secHandY1 = dimension + 90 * sin(count1  * pi / 180);
    //var secHandY = dimension + 90;
    //canvas.drawLine(center,Offset(secHandX,secHandY),secHandBrush);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
