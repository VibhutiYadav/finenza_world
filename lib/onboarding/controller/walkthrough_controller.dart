
import 'package:finenza_world/screens/auth/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WalkThroughController extends GetxController {

  var currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void onSkipPressed() {
    Get.off(SigninScreen());
  }

  void onNextPressed() {
    Get.off(SigninScreen());
  }
}