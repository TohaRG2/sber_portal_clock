import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sber_portal_clock/main_screen/widgets/color_regulator.dart';
import 'package:sber_portal_clock/main_screen/widgets/regulators_row.dart';

import 'logic.dart';
import 'widgets/time_widget.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MainScreenLogic());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: const [
          TimeWidget(),
          RegulatorsWidget(),
          ColorRegulator(),
        ],
      ),
    );
  }
}

