import 'package:flutter/material.dart';
import 'package:flutter_example/module/TextMod.dart';
import 'package:flutter_example/module/appBarMod.dart';
import 'package:flutter_example/module/containerMod.dart';
import 'package:flutter_example/module/materialAppMod.dart';
import 'package:flutter_example/module/scaffoldMod.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextMod(),
    );
  }
}
