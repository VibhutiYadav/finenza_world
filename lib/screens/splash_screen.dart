import 'dart:async';

import 'package:finenza_world/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../onboarding/walkthrough.dart';

// import '../onboarding/walkthrough.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    callTimer();
  }

  Future<void> callTimer() async {
    Timer(
      Duration(seconds: 3),
          () {
        Get.off(WalkThroughScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image.asset(
          //   'assets/images/background_image.png',
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width,
          //   fit: BoxFit.cover,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(appLogo, height: 200, width: 200),
              SizedBox(height: 32),
              // Text(APP_NAME, style: boldTextStyle(size: 26)),
            ],
          ),
        ],
      ),
    );
  }
}
