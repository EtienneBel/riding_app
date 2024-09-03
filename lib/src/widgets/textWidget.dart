import 'package:flutter/material.dart';

Widget textWidget(
    {String text = "",
    double fontSize = 12.0,
    FontWeight fontWeight = FontWeight.normal}) {
  return Text(text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight));
}
