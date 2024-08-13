import 'package:get/get.dart';

import '../../../main.dart';
import '../../../utils/helpers/images.dart';

class WalkThroughController extends GetxController {

  var currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void onSkipPressed() {
    Get.offNamed('/login');
  }

  void onNextPressed() {
    Get.offNamed('/login');
  }

  final List<Map<String, String>> pages = [
    {
      'title': language.walkTitle1,
      'title1': language.walkTitle11,
      'image': walk_Img1,
      'subTitle': language.walkThrough1,
      'subTitle1': language.walkThrough11,
    },
    {
      'title': language.walkTitle2,
      'title1': language.walkTitle22,
      'image': walk_Img2,
      'subTitle': language.walkThrough2,
      'subTitle1': language.walkThrough22,
      'subTitle11': language.walkThrough222,
    },
  ];
}