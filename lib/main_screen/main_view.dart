import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'widgets/brightness_regulator.dart';
import 'widgets/text_size_regulator.dart';
import 'widgets/time_widget.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MainScreenLogic());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Center(child: TimeWidget()),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TextSizeRegulator(),
                BrightnessRegulator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
