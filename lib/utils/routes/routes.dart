import 'package:finenza_world/binding/auth/otp_verification_binding.dart';
import 'package:finenza_world/binding/auth/signin_binding.dart';
import 'package:finenza_world/binding/dashboard/home_binding.dart';
import 'package:finenza_world/binding/services/credit_card/credit_card_binding.dart';
import 'package:finenza_world/binding/services/loan/loan_binding.dart';
import 'package:finenza_world/binding/splash/splash_binding.dart';
import 'package:finenza_world/binding/walkthrough/walkthrough_binding.dart';
import 'package:finenza_world/features/auth/view/otp_verification_screen.dart';
import 'package:finenza_world/features/auth/view/signin_screen.dart';
import 'package:finenza_world/features/auth/view/verification_successful.dart';
import 'package:finenza_world/features/dashboard/fragments/home_fragment.dart';
import 'package:finenza_world/features/dashboard/home_screen.dart';
import 'package:finenza_world/features/onboarding/view/walkthrough.dart';
import 'package:finenza_world/features/services/calc/emi_calc_screen.dart';
import 'package:finenza_world/features/services/credit_card/credit_card_application_screen.dart';
import 'package:finenza_world/features/services/credit_card/credit_card_screen.dart';
import 'package:finenza_world/features/services/insurance/insurance_screen.dart';
import 'package:finenza_world/features/services/loan/view/common_loan_screen.dart';
import 'package:finenza_world/features/services/loan/view/loan_bank_list.dart';
import 'package:finenza_world/features/splash/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static const String splash = '/splash';
  static const String walkthrough = '/walkthrough';
  static const String signup = '/signup';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String otpverified= '/otpverified';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String loan = '/loan';
  static const String creditcard = '/creditcard';
  static const String ccapplication = '/ccapplication';
  static const String insurance = '/insurance';
  static const String calc ='/calc';

  static final List<GetPage> pages = [
    GetPage(
        name: splash,
        page: ()=> SplashScreen(),
        binding: SplashBinding(),
    ),
    GetPage(
        name: walkthrough,
        page: ()=> WalkThroughScreen(),
        binding: WalkThroughBinding(),
    ),
    GetPage(
        name: login,
        page: ()=> SigninScreen(),
        binding: SigninBindig(),
    ),
    GetPage(
        name: otp,
        page: ()=>OTPVerificationScreen(),
        binding: OTPVerificationBinding(),
    ),
    GetPage(
        name: otpverified,
        page: ()=>VerificationSuccessfullScreen(),
    ),
    GetPage(
        name: home,
        page: ()=> HomeScreen(),
        binding: HomeBinding(),
    ),
    GetPage(
        name: dashboard ,
        page: ()=> HomeFragment()
    ),
    GetPage(
        name: loan,
        page: ()=>CommonLoanScreen(),
        binding: LoanBinding(),
    ),
    GetPage(
      name: creditcard,
      page: () => CreditCardScreen(),
      binding: CreditCardBinding(),
    ),
    GetPage(
        name: ccapplication,
        page: () => CreditCardApplicationScreen(),
    ),
    GetPage(
        name: insurance,
        page: () => InsuranceScreen(),
    ),
    GetPage(
        name: calc,
        page: () => EMICalcScreen(),
    )


  ];

}