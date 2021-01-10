import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColors with ChangeNotifier {
  bool _isLB = true;
  bool get isLB => _isLB;
  set isLB(bool value){
    _isLB = value;
    notifyListeners();
  }

  Color get color =>(_isLB)? Colors.lightBlue :Colors.amber;
  Color get trackColor =>(_isLB)? Colors.lightBlue[200] :Colors.amber[200];
}