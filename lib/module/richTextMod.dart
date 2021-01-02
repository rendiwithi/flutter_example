import 'dart:ui';
import 'package:flutter/material.dart';

class RichTextMod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Standart Text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Small Caps",
              style: TextStyle(
                  fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
            ),
            Text(
              "Small Caps with 1/2",
              style: TextStyle(fontSize: 20, fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac'),
              ]),
            ),
            Text(
              "Milonga text 3 1/2",
              style:
                  TextStyle(fontSize: 20, fontFamily: "Milonga", fontFeatures: [
                FontFeature.enable('smcp'),
                FontFeature.enable('frac'),
              ]),
            ),
            Text(
              "cardo 19",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Cardo",
              ),
            ),
            Text(
              "Cardo 19 old style",
              style:
                  TextStyle(fontSize: 20, fontFamily: "Cardo", fontFeatures: [
                FontFeature.oldstyleFigures(),
              ]),
            ),
            Text(
              "Milonga text",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Milonga",
              ),
            ),
            Text(
              "Milonga text",
              style:
                  TextStyle(fontSize: 20, fontFamily: "Milonga", fontFeatures: [
                FontFeature.stylisticSet(5),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
