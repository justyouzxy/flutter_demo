import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleRotateWidget extends StatefulWidget {
  final Widget childWidget;
  final Size size;
  final double imageWidth;
  const CircleRotateWidget({Key key, this.childWidget, this.size, this.imageWidth}) : super(key: key);

  @override
  _CircleRotateWidgetState createState() => _CircleRotateWidgetState();
}

class _CircleRotateWidgetState extends State<CircleRotateWidget> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation doubleTween;
  final rad = 0.0.obs;
  Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    doubleTween = new IntTween(begin: 0, end: 360).animate(animationController);
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _timer = Timer(Duration(seconds: 2), () {
          animationController?.reset();
        });
      } else if (status == AnimationStatus.dismissed) {
        animationController?.forward();
      }
    });

    animationController.addListener(() {
      rad.value = doubleTween.value.toDouble();
    });
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(() {
            return Container(
              width: widget.size.width,
              height: widget.size.height,
              child: CustomPaint(
                painter: LinePaint(rad: rad.value, size: widget.size, r1: widget.imageWidth / 2 + 10),
              ),
            );
          }),
          widget.childWidget,
        ],
      ),
    );
  }
}

double angleToRadian(double angle) {
  return angle * pi / 180;
}

class LinePaint extends CustomPainter {
  ///通过动画传入旋转的弧度
  final double rad;

  ///传入背景size
  final Size size;

  ///传入最小圆的半径(一般是里面图片width/2+10)
  final double r1;

  LinePaint({this.rad, this.size, this.r1});
  @override
  void paint(Canvas canvas, Size size) {
    ///中间圆半径
    double r2 = r1 + 12;

    ///外圈圆半径
    double r3 = r1 + 24;

    ///圆上小圆半径
    double r = 2;

    ///背景的中心点
    Offset center = Offset(size.width / 2, size.height / 2);

    ///外圈圆渐变色
    Gradient gradient = new LinearGradient(
      colors: [
        Colors.white.withOpacity(0.8),
        Colors.white.withOpacity(0.4),
        Colors.white.withOpacity(0.01),
        Colors.white.withOpacity(0.001),
        Colors.white.withOpacity(0.01),
        Colors.white.withOpacity(0.4),
        Colors.white.withOpacity(0.8)
      ],
    );

    Paint linePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    ///外圈三个圆
    canvas.drawCircle(
        center,
        r1,
        linePaint
          ..shader = gradient
              .createShader(Rect.fromPoints(Offset(center.dx - r1, center.dy), Offset(center.dx + r1, center.dy))));
    canvas.drawCircle(
        center,
        r2,
        linePaint
          ..shader = gradient
              .createShader(Rect.fromPoints(Offset(center.dx - r2, center.dy), Offset(center.dx + r2, center.dy))));
    canvas.drawCircle(
        center,
        r3,
        linePaint
          ..shader = gradient
              .createShader(Rect.fromPoints(Offset(center.dx - r3, center.dy), Offset(center.dx + r3, center.dy))));

    ///计算实心圆的初始位置
    Offset c1 = Offset(center.dx + r1 * sin(angleToRadian(rad + 120)), center.dy + r1 * cos(angleToRadian(rad + 120)));
    Offset c2 = Offset(center.dx + r2 * sin(angleToRadian(rad - 40)), center.dy + r2 * cos(angleToRadian(rad - 40)));
    Offset c3 = Offset(center.dx + r3 * sin(angleToRadian(rad - 100)), center.dy + r3 * cos(angleToRadian(rad - 100)));

    canvas.drawCircle(c1, r, Paint()..color = Colors.white);
    canvas.drawCircle(
        c1,
        r + 1.5,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke);
    canvas.drawCircle(c2, r, Paint()..color = Colors.white);
    canvas.drawCircle(
        c2,
        r + 1.5,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke);
    canvas.drawCircle(c3, r, Paint()..color = Colors.white);
    canvas.drawCircle(
        c3,
        r + 1.5,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
