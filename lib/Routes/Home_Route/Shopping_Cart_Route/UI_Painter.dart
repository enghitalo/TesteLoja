import 'package:flutter/material.dart';

class DefauldWidget_Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    paint.style = PaintingStyle.stroke;
    canvas.drawRect(
        Rect.fromCenter(width: size.width,height: size.height,
            center: Offset(size.width / 2, size.height / 2)),paint);
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}