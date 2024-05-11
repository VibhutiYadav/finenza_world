import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SocialLoginController extends GetxController {
  final RxBool socialLoginStatus = false.obs;
  final RxBool googleLoginStatus = false.obs;
  final RxBool otpLoginStatus = false.obs;
  final RxBool isIOS = false.obs;
  final RxBool appleLoginStatus = false.obs;

  void googleSignIn() {

  }

  void appleSign() {

  }
}
