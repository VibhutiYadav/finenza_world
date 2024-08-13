import 'package:get/get.dart';
import '../../../../utils/helpers/images.dart';

class LoanController extends GetxController {
  var currentService = 0.obs;
  var loanServiceIndex = 0.obs;
  RxList loanType=[].obs;
  List loanTypeList = [
    LL(
      title: "Axis Bank Home Loan",
      feature1: "Loans for Resident Indian and NRI Salaried and Self Employed customers.",
      feature2: " Attractive fixed and floating interest rates.",
      loanAmount: "Up to Rs. 5 Crore",
      maxTenure: "30 years",
      image: axis_ic1,
    ),
    LL(
      title: "Shubh Aarambh Home Loan",
      feature1: "12 EMIS off on regular payments of EMIs. 4 EMIS each waived at the end of 4th, 8th and 12th year.",
      feature2: " No extra costs, nil prepayment charge.",
      loanAmount: "Upto Rs. 30 lakhs",
      maxTenure: "30 years",
      image: axis_ic1,
    ),
    LL(
      title: "Fast Forward Home Loan",
      feature1: "12 EMIS off on regular payments of EMIs. 6 EMIs waived at the end of 10th and 15th year.",
      feature2: " No extra costs, nil prepayment charge.",
      loanAmount: "Rs. 30 lakhs to Rs. 5 Crore",
      maxTenure: "30 years",
      image: axis_ic1,
    ),
  ];

  final List<String> imageAssets = [
    ic_homeLoan,
    ic_personalLoan,
    ic_carLoan,
    ic_bikeLoan,
    ic_securedLoan,
    ic_unsecuredLoan,
    ic_studentLoan,
    ic_buisnessLoan
  ];

  final List<String> labels = [
    'Home Loan',
    'Personal Loan',
    'Car Loan',
    'Bike Loan',
    'Secured Loan',
    'Unsecured Loan',
    'Student Loan',
    'Buisness Loan',
  ];

  @override
  void onInit() {
    loanType.assignAll(loanTypeList);
    print("init called: $loanTypeList");
    super.onInit();


  }
}

class LL {
  final String title;
  final String feature1;
  final String feature2;
  final String loanAmount;
  final String maxTenure;
  final String image;

  LL({
    required this.title,
    required this.feature1,
    required this.feature2,
    required this.loanAmount,
    required this.maxTenure,
    required this.image,
  });
}
