import 'package:finenza_world/utils/helpers/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import '../../../main.dart';
import '../controller/otp_verification_controller.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final OtpVerificationController controller = Get.put(OtpVerificationController());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      controller.startTimer();
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(height: 120),
              _buildTopWidget(),
              SizedBox(height: 60),
              _buildOtpDialogWidget(),
              SizedBox(height: 10),
              Obx(() => Text(
                '${language.lblResendCode}: ${controller.start.value}',
                 textScaleFactor: 1,
                style: TextStyle(fontFamily: 'Urbanist-Light', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.appTextPrimaryColor),
              )),
              SizedBox(height: 50),
              MaterialButton(
                color:AppColors.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                onPressed: (){
                  print("on pressed clicked");
                  controller.submitOtp();
            
                },
                child: Text(
                  language.lblContinue,
                  textScaleFactor: 1,
                  style: TextStyle(fontFamily: 'Urbanist-Regular', fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white,),
                ),
                minWidth: double.infinity,
                height: 60,
              ),
            
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopWidget() {
    ThemeData theme = Theme.of(Get.context!);
    Color textColor = theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            language.lblOtpTitle,
            textScaleFactor: 1,
            style: TextStyle(fontFamily: 'Urbanist-Regular', fontSize:24, fontWeight: FontWeight.w700, color: AppColors.appTextPrimaryColor),
            // textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            language.lblOtpSubTitle,
            textScaleFactor: 1,
            style: TextStyle(fontFamily: 'Urbanist-Regular', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.appTextPrimaryColor),
          ),
        ],
      ),
    );
  }

  Widget _buildOtpDialogWidget(){
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyle(fontFamily: 'Urbanist-Light',fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Color(0x12121D0D),
        shape: BoxShape.circle,
        // border: Border.all(color: Colors.black38),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }

}
