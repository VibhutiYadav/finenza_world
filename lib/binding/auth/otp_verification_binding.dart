import 'package:finenza_world/features/auth/view/otp_verification_screen.dart';
import 'package:get/get.dart';

class OTPVerificationBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => OTPVerificationScreen());
  }

}