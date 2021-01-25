import 'dart:async';
import 'package:flutter/material.dart';

enum ColorEvent{toAmber, toLightBlue}

class ColorBloc {
  Color _color = Colors.amber;

  StreamController<ColorEvent> _eventController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStream => _stateController.stream;

}