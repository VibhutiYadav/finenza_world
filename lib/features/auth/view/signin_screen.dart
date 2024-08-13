import 'package:country_picker/country_picker.dart';
import 'package:finenza_world/utils/helpers/colors.dart';
import 'package:finenza_world/utils/helpers/configs.dart';
import 'package:finenza_world/utils/helpers/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../main.dart';
import '../controller/signin_controller.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final SignInController controller = Get.find<SignInController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Country selectedCountry = defaultCountry();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 130, 16, 16),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            _buildTopWidget(),
            SizedBox(height: 20),
            _buildSocialWidget(),

            SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black38,
                    thickness: 2,
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  language.lblOr,
                  style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 16,color: AppColors.appTextPrimaryColor),
                ),
                SizedBox(width: 3),
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
              color: AppColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: (){
                print("on pressed clicked");
                controller.otpSignIn();
              },
              child: Text(
                language.lblContinue,
                style: TextStyle(fontFamily: 'Urbanist-Regular', fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white,),
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
          Text(language.lblwelcome, textScaleFactor: 1, style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 24,color: AppColors.appTextPrimaryColor)),
          SizedBox(height: 10),
          Text(language.lblSigninSubTitle,textScaleFactor: 1,  style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w400, fontSize:16,color: AppColors.appTextPrimaryColor)),
        ],
      ),
    );
  }

  Widget _buildSocialWidget() {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black38),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              google_icon,
              width: 24,
              height: 24,
              alignment: Alignment.center,
            ),
            SizedBox(width: 8),
            Text(
              language.lbSigninWithGoogle,
              textScaleFactor: 1,
              style: TextStyle(fontFamily: 'Urbanist-Light', fontWeight: FontWeight.w400, fontSize: 14,color: AppColors.appTextPrimaryColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainWidget() {
    return Form(
      key: formKey,
      child: TextField(
        controller: controller.numberController,
        keyboardType: TextInputType.phone,
        inputFormatters: [LengthLimitingTextInputFormatter(10)],
        decoration: InputDecoration(
          prefixIcon: Image.asset(flag_icon,width: 30),
          labelText: language.hintPhoneText,
          labelStyle: TextStyle(fontFamily: 'Urbanist-Light', fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.appTextPrimaryColor.withOpacity(0.6)),
        ),
        autofocus: true,
        onSubmitted: (s) {
          controller.otpSignIn;
        },
      ),
    );
  }
}
