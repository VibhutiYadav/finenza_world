import 'package:finenza_world/features/auth/controller/signin_controller.dart';
import 'package:get/get.dart';

class SigninBindig extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignInController());
  }

}