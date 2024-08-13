import 'package:finenza_world/features/services/credit_card/controller/credit_card_controller.dart';
import 'package:get/get.dart';

class CreditCardBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CreditCardController());
  }
}