import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';

class BrightnessRegulator extends GetView<MainScreenLogic> {
  const BrightnessRegulator({super.key});

  @override
  Widget build(BuildContext context) {
    var state = controller.screenState;
    return Obx(() {
      return SliderTheme(
        data: const SliderThemeData(
          trackHeight: 80,
          activeTrackColor: Colors.transparent,
          inactiveTrackColor: Colors.transparent,
          thumbColor: Colors.transparent,
        ),
        child: RotatedBox(
          quarterTurns: 3,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Slider(
              min: 0.01,
              value: state.bright,
              onChanged: (value) {
                state.bright = value;
              },
            ),
          ),
        ),
      );
    });
  }
}
