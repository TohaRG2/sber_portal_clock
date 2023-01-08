import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';

class TextSizeRegulator extends GetView<MainScreenLogic> {
  const TextSizeRegulator({super.key});

  @override
  Widget build(BuildContext context) {
    var state = controller.timeState;
    return Obx(() {
      return SliderTheme(
        data: const SliderThemeData(
          trackHeight: 80,
          activeTrackColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          thumbColor: Colors.white10,
          overlayColor: Colors.white54,
        ),
        child: RotatedBox(
          quarterTurns: 3,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Slider(
              value: state.fontSize.value,
              onChanged: (value) {
                state.fontSize.value = value;
              },
              min: 150,
              max: 500,
            ),
          ),
        ),
      );
    });
  }
}
