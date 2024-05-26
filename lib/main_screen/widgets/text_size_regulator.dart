import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';
import 'package:sber_portal_clock/utils/my_logger.dart';

class TextSizeRegulator extends GetView<MainScreenLogic> {
  const TextSizeRegulator({super.key});

  @override
  Widget build(BuildContext context) {
    var state = controller.screenState;
    var maxDelta = (min(Get.width, Get.height) - 100) / 2;
    // logPrint('wigth = ${Get.width}, height = ${Get.height}, min = ${min(Get.width, Get.height)} maxDelta = $maxDelta');
    return Obx(() {
      return SliderTheme(
        data: const SliderThemeData(
          trackHeight: 80,
          activeTrackColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          thumbColor: Colors.transparent,
          overlayColor: Colors.white54,
        ),
        child: RotatedBox(
          quarterTurns: 3,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Slider(
              value: maxDelta - state.timeMargin.value,
              onChanged: (value) {
                state.timeMargin.value = maxDelta - value;
              },
              min: 0,
              max: maxDelta,
            ),
          ),
        ),
      );
    });
  }
}
