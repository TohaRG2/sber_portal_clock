import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'package:sber_portal_clock/utils/my_logger.dart';

class TimeState {
  final RxString _time = '00:00:00'.obs;
  get time => _time.value;

  final RxString _date = '01.01.2023'.obs;
  get date => _date.value;

  final RxString _weekDay = 'ПН'.obs;
  get weekDay => _weekDay.value;

  bool showColon = true;

  TimeState() {
    _timeTicker();
  }

  _timeTicker() async {
    await Jiffy.setLocale("ru");
    while (true) {
      // var now = DateTime.now();
      // if (showColon) {
        _time.value = Jiffy.now().format(pattern: 'HH:mm');
      // } else {
      //   _time.value = Jiffy(now).format('HH mm');
      // }
      // showColon = !showColon;
      _date.value = Jiffy.now().format(pattern:'dd.MM.yy');
      _weekDay.value = Jiffy.now().format(pattern: 'EEEE');
      await Future.delayed(const Duration(milliseconds: 1000), () {});
    }
  }

}
