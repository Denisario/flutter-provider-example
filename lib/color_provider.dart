import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color color = Color.fromRGBO(255, 255, 255, 1);
  bool switchValue = false;
  void changeColor(bool value) {
    final random = Random();
    color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    switchValue = value;
    notifyListeners();
  }
}
