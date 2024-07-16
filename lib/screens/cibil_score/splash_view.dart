import 'package:finenza_world/components/common_ap_bar.dart';
import 'package:finenza_world/main.dart';
import 'package:finenza_world/screens/cibil_score/form.dart';
import 'package:finenza_world/utils/images.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';

class CibilSplashView extends StatelessWidget {
  const CibilSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: language.lblcheckCibilSCore),
      ),
      body: Padding(
        padding:  EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              child: Image.asset(cibil_splash,
                height: context.height/3,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 40),
            MaterialButton(
              color:AppColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: (){
                print("on pressed clicked");
                Get.to(()=>CibilForm());

              },
              child: Text(
                language.lblContinue,
                textScaleFactor: 1,
                style: TextStyle(fontFamily: 'Urbanist-Regular', fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white,),
              ),
              minWidth: double.infinity,
              height: 60,
            ),

          ]

        ),
      ),
    );
  }
}
