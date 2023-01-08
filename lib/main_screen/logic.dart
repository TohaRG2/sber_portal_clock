import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sber_portal_clock/main_screen/time_state.dart';
import 'screen_state.dart';

class MainScreenLogic extends GetxController {
  final MainScreenState screenState = MainScreenState();
  final TimeState timeState = TimeState();

  @override
  void onInit() {
    super.onInit();
    _timeTicker();
  }

  _timeTicker() async {
    while (true) {
      var now = DateTime.now();
      String time = DateFormat('HH:mm').format(now);
      timeState.time.value = time;
      await Future.delayed(const Duration(milliseconds: 1000), () {});
    }
  }

}
