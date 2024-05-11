import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';
import '../verification_successful.dart';

class OtpVerificationController extends GetxController {
  final TextEditingController otpController = TextEditingController();
  final RxBool isLoading = false.obs;

  late Timer _timer;
  late RxInt start;

  @override
  void onInit() {
    super.onInit();
    start = 60.obs;
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (start.value == 0) {
        _timer.cancel();
      } else {
        start.value--;
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
  }

  void resetTimer() {
    start.value = 60;
  }

  void submitOtp() {
    final otpCode = otpController.text.trim();
    Get.off(VerificationSuccessfullScreen());
    // if (otpCode.isNotEmpty) {
    //   if (otpCode.length >= 6) {
    //     isLoading.value = true;
    //     onTap(otpCode);
    //   } else {
    //     showSnackBar(language.lblpleaseEnterValidOTP);
    //   }
    // } else {
    //   showSnackBar(language.lblpleaseEnterValidOTP);
    // }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  void onClose() {
    otpController.dispose();
    super.onClose();
  }
}
