import 'package:flutter/material.dart';
import 'UI_Painter.dart';

Widget DefauldWidget_id() {
  return CustomPaint(
    willChange: true,
    painter: DefauldWidget_Painter(),
  );
}

Widget FloatingButton_id() {
  return FloatingActionButton(
    onPressed: () {},
    tooltip: 'Increment',
    child: Icon(Icons.add),
  );
}
