import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'package:sber_portal_clock/utils/my_logger.dart';

class TimeState {
  final RxString _time = '00:00:00'.obs;
  get time => _time.value;

  final RxString _date = '1 января, ПН'.obs;
  get date => _date.value;

  TimeState() {
    _timeTicker();
  }

  _timeTicker() async {
    await Jiffy.locale("ru");
    while (true) {
      var now = DateTime.now();
      _time.value = Jiffy(now).format('HH:mm');
      _date.value = Jiffy(now).format('dd MMMM y, E');
      await Future.delayed(const Duration(milliseconds: 500), () {});
    }
  }

}
