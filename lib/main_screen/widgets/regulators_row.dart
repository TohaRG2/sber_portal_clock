import 'package:flutter/material.dart';
import 'package:sber_portal_clock/main_screen/widgets/brightness_regulator.dart';
import 'package:sber_portal_clock/main_screen/widgets/color_regulator.dart';
import 'package:sber_portal_clock/main_screen/widgets/text_size_regulator.dart';

class RegulatorsWidget extends StatelessWidget {
  const RegulatorsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          TextSizeRegulator(),
          BrightnessRegulator(),
        ],
      ),
    );
  }
}
