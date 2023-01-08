import 'package:dpad_container/dpad_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';

class TimeWidget extends GetView<MainScreenLogic> {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var state = controller.timeState;
    return DpadContainer(
      onClick: () {

      },
      onFocus: (focus) {
        state.isFocused.value = focus;
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(() {
          return Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
              border: Border.all(
                color: state.isFocused.value ? Colors.blue.shade400: Colors.transparent,
                width: 5,
              ),
            ),
            child: Text(
              state.time.value,
              style: TextStyle(
                color: Colors.white,
                fontSize: state.fontSize.value,
                fontFamily: 'Digital',
                // fontFamily: 'WhiteRabbit',
              ),
            ),
          );
        }),
      ),
    );
  }

}