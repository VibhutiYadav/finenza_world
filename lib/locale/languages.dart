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
  String get lblapply;
  String get lblOr;
  String get lbSigninWithGoogle;
  String get lblpleaseEnterValidOTP;
  String get lblOtpTitle;
  String get lblOtpSubTitle;
  String get lblResendCode;
  String get lblaccountVerified;
  String get lblaccountVerifiedSubTitle1;
  String get lblaccountVerifiedSubTitle2;
  String get lblhome;
  String get lblsearch;
  String get lblrecent;
  String get lblprofile;
  String get lblhello;
  String get lblservices;
  String get lblaccTitle1;
  String get lblaccSubTitle1;
  String get lblaccTitle2;
  String get lblaccSubTitle2;
  String get lblcheckCibilSCore;
  String get lblenterDetail;
  String get lblenterName;
  String get lblenterDob;
  String get lblenterNum;
  String get lblenterMail;
  String get lblenterPan;
  String get lblagree;
  String get lbltermsConditions;
  String get lblcreditscreen ;
  String get lblfeatures ;
  String get lblloanAmount;
  String get lblmaxTenure;

}
