import 'dart:async';

import 'package:get/get.dart';

import '../../onboarding/view/walkthrough.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    callTimer();
  }

  Future<void> callTimer() async {
    Timer(
      Duration(seconds: 3),
          () {
       Get.offNamed('/walkthrough');
      },
    );
  }
}