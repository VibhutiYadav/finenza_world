import 'package:finenza_world/features/onboarding/controller/walkthrough_controller.dart';
import 'package:get/get.dart';

class WalkThroughBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => WalkThroughController());
  }
}