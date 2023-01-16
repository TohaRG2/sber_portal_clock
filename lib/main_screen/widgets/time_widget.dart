import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sber_portal_clock/main_screen/logic.dart';
import 'package:sber_portal_clock/utils/my_logger.dart';

class TimeWidget extends GetView<MainScreenLogic> {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenState = controller.screenState;
    var timeState = controller.timeState;
    return Obx(() {
      return Positioned(
        left: screenState.timeMargin.value,
        right: screenState.timeMargin.value,
        top: screenState.timeMargin.value,
        bottom: screenState.timeMargin.value,
        child: FittedBox(
          child: Column(
            children: [
              Text(
                timeState.weekDay,
                style: TextStyle(
                  color: screenState.mainColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 130,
                ),
              ),
              Text(
                timeState.time,
                style: TextStyle(
                  color: screenState.mainColor,
                  fontSize: 600,
                  fontFamily: 'Digital',
                  // fontFamily: 'WhiteRabbit',
                ),
              ),
              Text(
                timeState.date,
                style: TextStyle(
                  color: screenState.mainColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 130,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}


