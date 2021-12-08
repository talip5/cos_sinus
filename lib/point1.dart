import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';

var count = 0.0;
var radius = 100.0;
var radian = 2 * math.pi;
double startPoint=0.0;
double j=0;
double dimension=100.0;

List<double> list=[];
List<Offset> listOffset=[];

class Point extends StatefulWidget {

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Point> {

  sinus5(){
    for (double i = 0.0; i <= 360.0; i += 5) {
      startPoint = 100 * math.sin(i * math.pi / 180);
      //list.add(startPoint);
      listOffset.add(Offset(i,startPoint + 150));
    }
    print(listOffset.length);
  }

  @override
  void initState() {
    sinus5();
    super.initState();
  }

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
              //sinus5();
            },
            child: Text('Timer')),
      ],
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 4;

    //list of points
    var points = [Offset(50.0, 50),
      Offset(50,60),
      Offset(50,70),
    ];

    List<Offset> points1=[Offset(0,dimension*list[0]),
      Offset(10,dimension*list[1]),
      Offset(20,dimension*list[2]),
      Offset(30,dimension*list[3]),
      Offset(40,dimension*list[4]),
      Offset(50,dimension*list[5]),
      Offset(60,dimension*list[6]),
      Offset(70,dimension*list[7]),
      Offset(80,dimension*list[8]),
      Offset(90,dimension*list[9]),
    ];

    //draw points on canvas
    //canvas.drawPoints(PointMode.points,points1,paint1);
    //canvas.drawPoints(PointMode.points,listOffset,paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
