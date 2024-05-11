import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class BaseLanguage {
  static BaseLanguage of(BuildContext context) => Localizations.of<BaseLanguage>(context, BaseLanguage)!;

  String get walkTitle1;
  String get walkTitle11;
  String get walkThrough1;
  String get walkThrough11;
  String get walkTitle2;
  String get walkTitle22;
  String get walkThrough2;
  String get walkThrough22;
  String get walkThrough222;
  String get skip;
  String get btnNext;
  String get lblwelcome;
  String get lblSigninSubTitle;
  String get  hintPhoneText;
  String get lblContinue;
  String get lblOr;
  String get lbSigninWithGoogle;
  String get lblpleaseEnterValidOTP;
  String get lblOtpTitle;
  String get lblOtpSubTitle;
  String get lblResendCode;
  String get lblaccountVerified;
  String get lblaccountVerifiedSubTitle1;
  String get lblaccountVerifiedSubTitle2;
}
