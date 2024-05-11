import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import '../../main.dart';
import 'controller/otp_verification_controller.dart';

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
      appBar: AppBar(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Get.isDarkMode ? Brightness.light : Brightness.dark,
          statusBarColor: context.theme.scaffoldBackgroundColor,
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildTopWidget(),
                  SizedBox(height: 60),
                  _buildOtpDialogWidget(),
                  SizedBox(height: 10),
                  Obx(() => Text(
                    '${language.lblResendCode}: ${controller.start.value}',
                    style: TextStyle(fontFamily: 'Urbanist-Light', fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
                  )),
                  SizedBox(height: 50),
                  MaterialButton(
                    color: Color(0xFF004E99),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    onPressed: (){
                      print("on pressed clicked");
                      controller.submitOtp();

                    },
                    child: Text(
                      language.lblContinue,
                      style: TextStyle(fontFamily: 'Urbanist-Light', fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white,),
                    ),
                    minWidth: double.infinity,
                    height: 60,
                  ),

                ],
              ),
            ),
            // Observer(
            //   builder: (_) => LoaderWidget().visible(controller.isLoading.value),
            // ),
          ],
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
            style: TextStyle(fontFamily: 'Urbanist-Bold', fontSize:30, fontWeight: FontWeight.w700, color: Colors.black),
            // textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            language.lblOtpSubTitle,
            style: TextStyle(fontFamily: 'Urbanist-Light', fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
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
        color: Colors.grey.shade50,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black38),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
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
