import 'dart:async';

import 'package:finenza_world/screens/dashboard/home_screen.dart';
import 'package:finenza_world/utils/colors.dart';
import 'package:finenza_world/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main.dart';



class VerificationSuccessfullScreen extends StatefulWidget {
  @override
  _VerificationSuccessfullScreenState createState() => _VerificationSuccessfullScreenState();
}

class _VerificationSuccessfullScreenState extends State<VerificationSuccessfullScreen> {
  @override
  void initState() {
    super.initState();
    callTimer();
  }

  Future<void> callTimer() async {
    Timer(
      Duration(seconds: 3),
          () {
        Get.off(HomeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 106,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 30,top: 100),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(verified_icon, width: 150, height: 150,),
                  SizedBox(height: 30),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                            language.lblaccountVerified,
                            textScaleFactor: 1,
                            style: TextStyle(fontFamily: 'Urbanist-Bold',fontWeight: FontWeight.w700, fontSize: 30,color: Colors.white)
                        ),
                        SizedBox(height: 10),
                        Text(
                            textScaleFactor: 1,
                            language.lblaccountVerifiedSubTitle1,
                            style: TextStyle(fontFamily: 'Urbanist-Rgular',fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white)
                        ),
                        SizedBox(height: 05),
                        Text(
                            textScaleFactor: 1,
                            language.lblaccountVerifiedSubTitle2,
                            style: TextStyle(fontFamily: 'Urbanist-Rgular',fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white)
                        ),
                      ]
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
