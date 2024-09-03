import 'package:flutter/material.dart';
import 'package:riding_app/src/widgets/textWidget.dart';

Widget exploredbyCard({String title = ""}) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    width: 120.0,
    height: 120.0,
    color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textWidget(
                text: title, fontSize: 14.0, fontWeight: FontWeight.bold),
            const Icon(Icons.arrow_forward, size: 15)
          ],
        ),
        Image.asset("images/uber-taxi.png", width: 150),
      ],
    ),
  );
}
