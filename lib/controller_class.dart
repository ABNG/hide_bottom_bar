import 'package:flutter/material.dart';

class MyController {
  static late ScrollController _controller;

  static ScrollController get controller => _controller;

  static set controller(ScrollController value) {
    _controller = value;
  }
}
