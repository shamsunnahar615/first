import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeScreenController extends GetxController {
  final PageController controller = PageController(initialPage: 0);
  var isSelectButton = Color(0xff139F25);

  void smoothPage(int index) {
    update();
  }
  void button() {}
  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
