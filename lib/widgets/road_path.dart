import 'package:flutter/material.dart';

class RoadPath extends StatelessWidget {
  final double width;
  final int step;

  RoadPath({required this.width, this.step = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.2),
      width: width,
      child: CustomPaint(
        painter: _RoadPaint(step: step),
      ),
    );
  }
}

class _RoadPaint extends CustomPainter {
  final int step;

  _RoadPaint({this.step = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final partW = size.width / 3;
    final pointXStart = partW * 2;
    final pointYStart = size.height;
    print(size);
    canvas.translate(pointXStart, pointYStart);
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Color(0xFF8250ED)
      ..style = PaintingStyle.stroke;
    Path mpath = Path();

    if (step == 0) return;

    for (int i = 0; i <= step; i++) {
      switch (i) {
        case 1:
          mpath.relativeCubicTo(0, -62, -partW * 2, -62.5, -partW * 2, -110.25);
          mpath.relativeQuadraticBezierTo(0, -24.125, 62.5, -49.25);
          break;
        case 2:
          mpath.relativeQuadraticBezierTo(42.5, -39.25, 62.5, -49.25);

          /*mpath.relativeQuadraticBezierTo(-(partW * 4 - 50), -49.25, 0, -98.5);
        mpath.relativeQuadraticBezierTo(partW * 3 + 10, -49.25, 0, -98.5);
        mpath.relativeQuadraticBezierTo(-partW * 3 + 10, -49.25, 0, -98.5);
        canvas.drawPath(mpath, paint);*/
          break;
      }
    }

    canvas.drawPath(mpath, paint);

    /*mpath.relativeQuadraticBezierTo(partW * 3 + 10, -49.25, 0, -98.5);
    mpath.relativeQuadraticBezierTo(-partW * 3 + 10, -49.25, 0, -98.5);
    mpath.relativeQuadraticBezierTo(partW * 3 + 10, -49.25, 0, -98.5);
    mpath.relativeQuadraticBezierTo(-partW * 3 + 10, -49.25, 0, -98.5);
    mpath.relativeQuadraticBezierTo(partW * 3 + 10, -49.25, 0, -98.5);
    mpath.relativeQuadraticBezierTo(-25.5, -10, -25.5, -46.5);

    canvas.drawPath(mpath, paint);*/
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
