import 'package:finenza_world/components/controller/common_banklist_controller.dart';
import 'package:get/get.dart';

class CommonBankListBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CommonBankListController());
  }
}