import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sber_portal_clock/utils/my_logger.dart';
import 'package:screen_brightness/screen_brightness.dart';


class MainScreenState {
  RxDouble timeMargin = 100.0.obs;
  RxBool isTimeFocused = false.obs;
  final Rx<Color> _mainColor = Colors.white.obs;
  Color get mainColor => _mainColor.value;

  final RxDouble _bright = 0.01.obs;
  double get bright => _bright.value;
  set bright(val) {
    if (_bright.value != val) {
      _bright.value = val;
      setBrightness();
    }
  }

  final RxDouble _selectedColor = 1.0.obs;
  double get selectedColor => _selectedColor.value;
  set selectedColor(value) {
    _selectedColor.value = value;
    changeColor();
  }


  MainScreenState() {
    ///Initialize variables
  }

  Future<void> setBrightness() async {
    try {
      // logPrint('try change brightness to $brightness');
      await ScreenBrightness().setScreenBrightness(bright);
    } catch (e) {
      logPrintErr('Failed to set brightness - $e');
    }
  }

  void changeColor() {
    var baseBright = 255;
    var k = 10;
    var opacity = 1.0;
    int red = baseBright;
    int green = baseBright;
    int blue = baseBright;
    int curValue = selectedColor.toInt();
    // от белого к красному
    if (curValue < 20) {
      red = baseBright;
      green = baseBright - (curValue * k);
      blue = baseBright - (curValue * k);
    // от красного к желтому
    } else if (curValue < 40) {
      red = baseBright;
      green = baseBright - k * (20 - (curValue - 20));
      blue = baseBright - 20 * k;
    // от желтого к зеленому
    } else if (curValue < 60) {
      red = baseBright - k * (curValue - 40);
      green = baseBright;
      blue = baseBright - 20 * k;
    // от зеленого к голубому
    } else if (curValue < 80) {
      red = baseBright - 20 * k;
      green = baseBright;
      blue = baseBright - k * (20 - (curValue - 60));
    // от голубого к синему
    } else if (curValue < 100) {
      red = baseBright - 20 * k;
      green = baseBright - k * (curValue - 80);
      blue = baseBright;
    // от синего к фиолетовому
    } else {
      red = baseBright - k * (20 - (curValue - 100));
      green = baseBright - 20 * k;
      blue = baseBright;
    }
    _mainColor.value = Color.fromRGBO(red, green, blue, opacity);
  }
}

