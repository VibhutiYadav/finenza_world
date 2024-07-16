

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/common_ap_bar.dart';
import '../../main.dart';
import '../../utils/colors.dart';
import 'cibil_score_screen.dart';
import 'controller/cibil_controller.dart';

class CibilForm extends StatefulWidget {
  CibilForm({super.key});


  @override
  State<CibilForm> createState() => _CibilFormState();
}

class _CibilFormState extends State<CibilForm> {

  @override
  Widget build(BuildContext context) {
    final CibilController controller = Get.put(CibilController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CommonAppBar(title:language.lblcheckCibilSCore),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(language.lblenterDetail,
                textScaleFactor: 1,
                style: TextStyle(
                  fontFamily: 'Urbanist-Regular',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
              SizedBox(height: 20,),
              Card(
                // color: Color(0xFFA4A9AE).withOpacity(0.2),
                // shadowColor:Color(0xFFA4A9AE).withOpacity(0.2),
                // surfaceTintColor:Color(0xFFA4A9AE).withOpacity(0.23),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: controller.nameController,
                  decoration: InputDecoration(
                    hintText: language.lblenterName,
                    hintStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: AppColors.hintTextColor
                    ),
                    fillColor: Color(0xFFA4A9AE),
                    // focusColor: Color(0xFFA4A9AE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: controller.dobController,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    hintText: language.lblenterDob,
                    hintStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.hintTextColor
                    ),
                    fillColor: Color(0xFFA4A9AE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  onTap: ()=>controller.selectDate(context),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: controller.numController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  // maxLength: 10,
                  decoration: InputDecoration(
                    hintText: language.lblenterNum,
                    hintStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.hintTextColor
                    ),
                    fillColor: Color(0xFFA4A9AE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: controller.panController,
                  decoration: InputDecoration(
                    hintText: language.lblenterPan,
                    hintStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.hintTextColor
                    ),
                    fillColor: Color(0xFFA4A9AE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color:AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  controller: controller.mailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: language.lblenterMail,
                    hintStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.hintTextColor
                    ),
                    fillColor: Color(0xFFA4A9AE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color:AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Obx(() =>  Row(
                children: [
                  Checkbox(value: controller.isAccepted.value,
                      onChanged: (bool? value){
                        controller.isAccepted.value=value ?? false;
                      }
                  ),
                  Text(language.lblagree,
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(language.lbltermsConditions,
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              )),

              SizedBox(height: 40),
              MaterialButton(
                color:AppColors.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                onPressed: () => controller.isAccepted.value == false
                    ? Get.snackbar("Alert", "Please accept the terms and conditions.")
                    : Get.to(()=>CibilScoreScreen()),
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
}
