import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';

var count = 0.0;
var radius = 10.0;
var radian = 2 * math.pi;
double startPoint = 0.0;
double j = 0;
double dimension = 100.0;
int wigdetPage = 0;
bool value = true;
int time = 1;
double rating=0.0;

List<Offset> listOffset = [];
List<Offset> listOffsetx = [];
List<Offset> listOffset10 = [];
List<Offset> listOffset11 = [];
List<Offset> listOffset12 = [];
List<Offset> listOffset13 = [];
List<Offset> listOffset14 = [];
List<Offset> listOffset15 = [];
List<Offset> listOffset16 = [];
List<Offset> listOffset17 = [];
List<Offset> listOffset18 = [];
List<Offset> listOffset19 = [];

class Point extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Point> {
  var newRating;

  sinus5() {
    for (double i = 0.0; i <= 360.0; i += 1) {
      startPoint = 100 * math.sin(i * math.pi / 180);
      listOffset.add(Offset(i, startPoint + 150));
    }
    print(listOffset.length);
  }

  sinus10() {
    for (double i = 0.0; i <= 180.0; i += 1) {
      startPoint = radius * math.sin(i * 2 * math.pi / 180);
      listOffset10.add(Offset(i, startPoint + 150));
      listOffset11.add(Offset(i + 10, startPoint + 150));
      listOffset12.add(Offset(i + 20, startPoint + 150));
      listOffset13.add(Offset(i + 30, startPoint + 150));
      listOffset14.add(Offset(i + 40, startPoint + 150));
      listOffset15.add(Offset(i + 50, startPoint + 150));
      listOffset16.add(Offset(i + 60, startPoint + 150));
      listOffset17.add(Offset(i + 70, startPoint + 150));
      listOffset18.add(Offset(i + 80, startPoint + 150));
      listOffset19.add(Offset(i + 90, startPoint + 150));
    }
    print(listOffset10.length);
  }

  deletesinus10() {

    listOffset10.removeRange(0, listOffset10.length);
    listOffset11.removeRange(0, listOffset11.length);
    listOffset12.removeRange(0, listOffset12.length);
    listOffset13.removeRange(0, listOffset13.length);
    listOffset14.removeRange(0, listOffset14.length);
    listOffset15.removeRange(0, listOffset15.length);
    listOffset16.removeRange(0, listOffset16.length);
    listOffset17.removeRange(0, listOffset17.length);
    listOffset18.removeRange(0, listOffset18.length);
    listOffset19.removeRange(0, listOffset19.length);
    print(listOffset10.length);
  }

  @override
  void initState() {
    //sinus5();
    sinus10();
    super.initState();
  }

  /*Widget deneme(int widgetPage) {
    if (wigdetPage == 0) {
      return CustomPaint(
        painter: DrawCircle(),
      );
    } else {
      return CustomPaint(
        painter: DrawCircle1(),
      );
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          width: 400,
          height: 300,
          color: Color(0xFFFFFF00),
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
              setState(() {});
              count += 10;
              //});
            },
            child: Text('Step')),
        ElevatedButton(
            onPressed: () {
              /*setState(() {
                value = !value;
                if (value == true) {
                  wigdetPage = 0;
                  deneme(wigdetPage);
                } else {
                  wigdetPage = 1;
                  deneme(wigdetPage);
                }
              });*/
            },
            child: Text('Timer')),
        ElevatedButton(
            onPressed: () {
              time=0;
              sinus10();
              Timer.periodic(Duration(milliseconds: 200), (timer) {
                if (time == 100) {
                  timer.cancel();
                }
                setState(() {});
                if (time == 1) {
                  setState(() {
                    listOffsetx = listOffset10;
                  });
                } else if (time == 2) {
                  setState(() {
                    listOffsetx = listOffset11;
                  });
                } else if (time == 3) {
                  setState(() {
                    listOffsetx = listOffset12;
                  });
                } else if (time == 4) {
                  setState(() {
                    listOffsetx = listOffset13;
                  });
                } else if (time == 5) {
                  setState(() {
                    listOffsetx = listOffset14;
                  });
                } else if (time == 6) {
                  setState(() {
                    listOffsetx = listOffset15;
                  });
                } else if (time == 7) {
                  setState(() {
                    listOffsetx = listOffset16;
                  });
                } else if (time == 8) {
                  setState(() {
                    listOffsetx = listOffset17;
                  });
                } else if (time == 9) {
                  setState(() {
                    listOffsetx = listOffset18;
                  });
                } else if (time == 10) {
                  setState(() {
                    listOffsetx = listOffset19;
                  });
                } else if (time == 11) {
                  setState(() {
                    listOffsetx = listOffset18;
                  });
                } else if (time == 12) {
                  setState(() {
                    listOffsetx = listOffset17;
                  });
                } else if (time == 13) {
                  setState(() {
                    listOffsetx = listOffset16;
                  });
                } else if (time == 14) {
                  setState(() {
                    listOffsetx = listOffset15;
                  });
                } else if (time == 15) {
                  setState(() {
                    listOffsetx = listOffset14;
                  });
                } else if (time == 16) {
                  setState(() {
                    listOffsetx = listOffset13;
                  });
                } else if (time == 17) {
                  setState(() {
                    listOffsetx = listOffset12;
                  });
                } else if (time == 18) {
                  setState(() {
                    listOffsetx = listOffset11;
                  });
                }
                if (time == 18) {
                  time = 0;
                }
                time++;
              });
              print(time);
            },
            child: Text('Animation')),
        ElevatedButton(
            onPressed: () {
              setState(() {
                //time=100;
                deletesinus10();
              });
            },
            child: Text('Stop')),
        Slider(
          value: radius,
          onChanged: (newRating){
            setState(() {
              deletesinus10();
              radius=newRating;
              sinus10();
            });
            //initState();
          },
          min: 10,
          max: 100,
        ),
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

    var paint2 = Paint()
      ..color = Color(0xFF000000)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 4;

    canvas.drawPoints(PointMode.points, listOffsetx, paint1);
    canvas.drawLine(Offset(0.0, 150.0), Offset(400.0, 150.0), paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class DrawCircle1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 4;

    var paint2 = Paint()
      ..color = Color(0xFF000000)
      ..strokeCap = StrokeCap.round //rounded points
      ..strokeWidth = 4;

    canvas.drawPoints(PointMode.points, listOffsetx, paint1);
    canvas.drawLine(Offset(0.0, 150.0), Offset(400.0, 150.0), paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
