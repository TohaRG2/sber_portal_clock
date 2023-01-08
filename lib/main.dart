import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_screen/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Clock for SberPortal',
      debugShowCheckedModeBanner: false,
      home: MainScreenPage(),
      // home: ControllerPage(),
    );
  }
}
