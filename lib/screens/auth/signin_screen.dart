import 'package:country_picker/country_picker.dart';
import 'package:finenza_world/screens/auth/otp_verification_screen.dart';
import 'package:finenza_world/utils/configs.dart';
import 'package:finenza_world/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../main.dart';
import 'controller/signin_controller.dart';
import 'controller/social_login_controller.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final SignInController controller = Get.put(SignInController());
  final SocialLoginController socialLoginController = Get.put(SocialLoginController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Country selectedCountry = defaultCountry();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: context.theme.scaffoldBackgroundColor,
      //   leading: GetPlatform.isWeb || GetPlatform.isDesktop
      //       ? null // Handle platform specific UI (optional)
      //       : GetPlatform.isMobile && Navigator.canPop(context)
      //       ? IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () => Get.back(),
      //   )
      //       : null,
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarIconBrightness: Get.isDarkMode ? Brightness.light : Brightness.dark,
      //     statusBarColor: context.theme.scaffoldBackgroundColor,
      //   ),
      // ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 130, 16, 16),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            _buildTopWidget(),
            SizedBox(height: 20),
            _buildSocialWidget(),

            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    // color: Theme.of(context).dividerColor,
                    color: Colors.black38,
                    thickness: 2,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  language.lblOr,
                  style: TextStyle(fontFamily: 'Urbanist-Bold',fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Divider(
                    color: Colors.black38,
                    thickness: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            _buildMainWidget(),
            SizedBox(height: 120),
            MaterialButton(
              color: Color(0xFF004E99),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: (){
                print("on pressed clicked");
                controller.otpSignIn();
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
    );
  }

  Widget _buildTopWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(language.lblwelcome,  style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 30)),
          SizedBox(height: 15),
          Text(language.lblSigninSubTitle,  style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w400, fontSize: 20)),
        ],
      ),
    );
  }

  // Widget _buildSocialWidget() {
  //   return Obx(() {
  //     if (socialLoginController.socialLoginStatus.value) {
  //       return Column(
  //         children: [
  //           SizedBox(height: 20),
  //           if ((socialLoginController.googleLoginStatus.value || socialLoginController.otpLoginStatus.value) ||
  //               (socialLoginController.isIOS.value && socialLoginController.appleLoginStatus.value))
  //             Row(
  //               children: [
  //                 Expanded(
  //                   child: Divider(
  //                     color: Theme.of(context).dividerColor,
  //                     thickness: 2,
  //                   ),
  //                 ),
  //                 SizedBox(width: 16),
  //                 Text(
  //                   'Continue with',
  //                   style: TextStyle(fontWeight: FontWeight.bold),
  //                 ),
  //                 SizedBox(width: 16),
  //                 Expanded(
  //                   child: Divider(
  //                     color: Theme.of(context).dividerColor,
  //                     thickness: 2,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           SizedBox(height: 24),
  //           if (socialLoginController.googleLoginStatus.value)
  //             ElevatedButton(
  //               onPressed: socialLoginController.googleSignIn,
  //               style: ElevatedButton.styleFrom(
  //                 // primary: Theme.of(context).cardColor,
  //                 padding: EdgeInsets.all(8),
  //               ),
  //               child: Row(
  //                 children: [
  //                   Container(
  //                     padding: EdgeInsets.all(12),
  //                     decoration: BoxDecoration(
  //                       color: Colors.blue.withOpacity(0.1),
  //                       shape: BoxShape.circle,
  //                     ),
  //                     child: Icon(Icons.g_mobiledata),
  //                   ),
  //                   SizedBox(width: 8),
  //                   Expanded(
  //                     child: Text(
  //                       'Sign In with Google',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           if (socialLoginController.googleLoginStatus.value) SizedBox(height: 16),
  //           if (socialLoginController.isIOS.value && socialLoginController.appleLoginStatus.value)
  //             ElevatedButton(
  //               onPressed: socialLoginController.appleSign,
  //               style: ElevatedButton.styleFrom(
  //                 // primary: Theme.of(context).cardColor,
  //                 padding: EdgeInsets.all(8),
  //               ),
  //               child: Row(
  //                 children: [
  //                   Container(
  //                     padding: EdgeInsets.all(8),
  //                     decoration: BoxDecoration(
  //                       color: Colors.grey.withOpacity(0.1),
  //                       shape: BoxShape.circle,
  //                     ),
  //                     child: Icon(Icons.phone_iphone),
  //                   ),
  //                   SizedBox(width: 8),
  //                   Expanded(
  //                     child: Text(
  //                       'Sign In with Apple',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //         ],
  //       );
  //     } else {
  //       return Offstage();
  //     }
  //   });
  // }

  Widget _buildSocialWidget() {
    return Column(
      children: [
        SizedBox(height: 24),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38),
            borderRadius: BorderRadius.circular(5),
          ),
          child: MaterialButton(
            onPressed: socialLoginController.googleSignIn,
            padding: EdgeInsets.all(8),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                // color: Colors.blue.withOpacity(0.1),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(google_icon, width: 30),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      language.lbSigninWithGoogle,
                      style: TextStyle(fontFamily: 'Urbanist-Light', fontWeight: FontWeight.w400, fontSize: 18,color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
      ],
    );
  }


  Widget _buildMainWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: formKey,
          child: TextField(
            controller: controller.numberController,
            keyboardType: TextInputType.phone,
            maxLength: 10,
            decoration: InputDecoration(
              prefixIcon: Image.asset(flag_icon,width: 30),
              labelText: language.hintPhoneText,
              labelStyle: TextStyle(fontFamily: 'Urbanist-Light', fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black),
            ),
            autofocus: true,
            onSubmitted: (s) {
              controller.otpSignIn;
            },
          ),

        ),
      ],
    );
  }
}
