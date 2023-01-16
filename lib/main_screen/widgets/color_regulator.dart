import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';
import 'package:sber_portal_clock/utils/my_logger.dart';

class ColorRegulator extends GetView<MainScreenLogic> {
  const ColorRegulator({super.key});

  @override
  Widget build(BuildContext context) {
    var state = controller.screenState;
    return Positioned(
      bottom: 0,
      left: 100,
      right: 100,
      child: Obx(() {
        return SliderTheme(
          data: SliderThemeData(
            trackHeight: 2,
            activeTrackColor: Colors.transparent,
            inactiveTrackColor: Colors.transparent,
            thumbColor: Colors.white24,
            overlayColor: Colors.white54,
          ),
          child: Slider(
            min: 0,
            max: 120,
            value: state.selectedColor,
            onChanged: (value) {
              state.selectedColor = value;
            },
          ),
        );
      }),
    );
  }
}