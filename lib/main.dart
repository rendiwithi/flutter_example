import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/module/TextMod.dart';
import 'package:flutter_example/module/appBarMod.dart';
import 'package:flutter_example/module/buttonMod.dart';
import 'package:flutter_example/module/containerMod.dart';
import 'package:flutter_example/module/floatingActionButtonMod.dart';
import 'package:flutter_example/module/materialAppMod.dart';
import 'package:flutter_example/module/opacity.dart';
import 'package:flutter_example/module/scaffoldMod.dart';
import 'package:flutter_example/module/snackBarMod.dart';

// void main() => runApp(MyApp());

void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.portraitUp,
    //   ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloatingActionButtonMod(),
    );
  }
}
