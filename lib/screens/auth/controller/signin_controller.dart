import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../main.dart';
import '../../../utils/configs.dart';
import '../otp_verification_screen.dart';

class SignInController extends GetxController {
  final TextEditingController numberController = TextEditingController();
  final selectedCountry = defaultCountry().obs;

  void otpSignIn() {
    Get.to(()=>OTPVerificationScreen());
  }
}

