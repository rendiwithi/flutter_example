import 'package:flutter/material.dart';
import 'package:flutter_example/module/getData.dart';
import 'package:flutter_example/module/postMethodMod.dart';
import 'package:flutter_example/module/qrGenerator.dart';

import 'package:flutter_example/module/qrScanMod.dart';

void main() => runApp(MyApp());

// void main(){
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
//     runApp(MyApp());
//   });
// }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.portraitUp,
    //   ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetData(),
      // home: Scaffold(
      //   appBar: PreferredSize(
      //     preferredSize: Size.fromHeight(300),
      //     child: AppBar(
      //       backgroundColor: Colors.amber,
      //       flexibleSpace: Positioned(
      //         bottom: 0,
      //         right: 0,
      //         child: Container(
      //           margin: EdgeInsets.all(20),
      //           child: Text(
      //             "Ya Itulah",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.w700,
      //               )),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
