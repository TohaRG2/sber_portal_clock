import 'package:get/get.dart';
import 'package:screen_brightness/screen_brightness.dart';

import '../../utils/my_logger.dart';

class MainScreenState {
  RxDouble timeMargin = 100.0.obs;
  RxBool isTimeFocused = false.obs;

  final RxDouble _bright = 0.01.obs;
  get bright => _bright.value;
  set bright(val) {
    if (_bright.value != val) {
      setBrightness(val);
    }
    _bright.value = val;
  }


  MainScreenState() {
    ///Initialize variables
    setBrightness(bright);
  }

  Future<void> setBrightness(double brightness) async {
    try {
      // logPrint('try change brightness to $brightness');
      await ScreenBrightness().setScreenBrightness(brightness);
    } catch (e) {
      logPrintErr('Failed to set brightness - $e');
    }
  }

}
