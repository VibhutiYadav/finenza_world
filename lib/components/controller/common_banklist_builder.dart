import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/screens/services/credit_card/credit_card_application_screen.dart';
import 'package:finenza_world/screens/services/loan/loan_application_screen.dart';
import 'package:finenza_world/utils/images.dart';
import 'package:get/get.dart';

import '../../screens/services/insurance/insurance_screen.dart';

class CommonBankListController extends GetxController{
  var bankListIndex = 0.obs;
  final List banks=[].obs;
  final List bank = [
    CC(
        title:"Bajaj Finserv",
        subtitle: "Home Loan ka Fastest Solution!",
        image: bajaj_ic,
    ),
    CC(
      title: "HDFC Bank",
      subtitle: "Lorem Ipsum sengu ejuhi uhuaa",
      image: hdfc_ic,
    ),
    CC(
      title: "Axis Bank",
      subtitle: "Lorem Ipsum sengu ejuhi uhuaa",
      image: axis_ic,
    ),
    CC(
      title: "Union Bank",
      subtitle: "Lorem Ipsum sengu ejuhi uhuaa",
      image:union_ic,
    )
  ];

  screenNavigator(whichScreen, index, title){
    switch (whichScreen) {
      case "loan":
        Get.to(LoanApplicationScreen(title: title));
        break;
      case "creditcard":
        Get.to(CreditCardApplicationScreen(title:banks[index].title));
        break;
      case "insurance":
        // Get.to(InsuranceScreen(title:banks[index].title, index: index,));
        break;
      default:
        Get.to(CommonBankList(whichScreen:whichScreen, title: title,));
        break;
    }

  }

  @override
  void onInit() {
    super.onInit();
    banks.assignAll(bank);
  }
}

class CC{
  String title;
  String subtitle;
  String image;

  CC({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

