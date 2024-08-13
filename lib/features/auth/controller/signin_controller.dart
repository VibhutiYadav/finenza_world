import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../main.dart';
import '../../../utils/helpers/configs.dart';
import '../view/otp_verification_screen.dart';

class SignInController extends GetxController {
  final RxBool socialLoginStatus = false.obs;
  final RxBool googleLoginStatus = false.obs;
  final RxBool otpLoginStatus = false.obs;
  final RxBool isIOS = false.obs;
  final RxBool appleLoginStatus = false.obs;
  final TextEditingController numberController = TextEditingController();
  final selectedCountry = defaultCountry().obs;

  void otpSignIn() {
    Get.toNamed('/otp');
  }

  void googleSignIn() {

  }

  void appleSign() {

  }
}

