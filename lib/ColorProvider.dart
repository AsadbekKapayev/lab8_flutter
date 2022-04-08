import 'package:flutter/material.dart';
import 'package:flutter_lab8_final/main.dart';
import 'dart:math' as math;

class ColorProvider extends ChangeNotifier {
  Color mainColor = Colors.red;
  bool isSwitched = false;

  void toggle() {
    mainColor = generateRandomColor3();

    if (isSwitched == false) {
      isSwitched = true;
    } else {
      isSwitched = false;
    }
    notifyListeners();
  }

  Color generateRandomColor3() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),);
  }
}
