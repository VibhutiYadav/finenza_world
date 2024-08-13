import 'package:get/get.dart';
import '../../../../utils/helpers/images.dart';

class CreditCardController extends GetxController {
  var ccServiceIndex = 0.obs;
  RxList ccType=[].obs;
  List ccTypeList = [
    CC(
      title: "Neo Credit Card",
      feature1: "40% off on Zomato ",
      feature2: "Enjoy the 'Power of 10'",
      feature3: "Dining Delights",
      feature4: "Spend securely",
      feature5: "Convert purchases to EMI",
      image: cc_ic1,
    ),
    CC(
      title: "ACE Credit Card",
      feature1: "Cashback on every spend*",
      feature2: " Lounge Access",
      feature3: "Fuel Surcharge waiver",
      feature4: " Dining Delights",
      feature5: "Convert purchases to EMI",
      image: cc_ic2,
    ),
    CC(
      title: "Axis Bank MYZONE",
      feature1: "Instant discount on Swiggy",
      feature2: "Enjoy complimentary lounge",
      feature3: "Earn EDGE REWARDS",
      feature4: "Shopping Discount at AJIO",
      feature5: "Convert purchases to EMI",
      image: cc_ic3,
    ),
  ];

  @override
  void onInit() {
    ccType.assignAll(ccTypeList);
    super.onInit();


  }
}

class CC {
  final String title;
  final String feature1;
  final String feature2;
  final String feature3;
  final String feature4;
  final String feature5;
  final String image;

  CC({
    required this.title,
    required this.feature1,
    required this.feature2,
    required this.feature3,
    required this.feature4,
    required this.feature5,
    required this.image,
  });
}
