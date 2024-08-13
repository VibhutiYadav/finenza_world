import 'package:finenza_world/features/services/loan/controller/loan_screen_controller.dart';
import 'package:get/get.dart';

class LoanBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => LoanController());
  }
}