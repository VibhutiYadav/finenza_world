import 'dart:core';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../main.dart';
import '../../../utils/helpers/images.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getTimeGreeting();
  }
  var currentIndex = 0.obs;
  var currentService = 0.obs;
  var subservice = 0.obs;
  var selectedCardIndex = RxInt(-1);
  final List<String> imageAssets = [
    ic_loan,
    ic_cc,
    ic_insurance,
    ic_calc,
  ];
  final List<String> labels = [
    language.lblloan,
    language.lblcreditcard,
    language.lblinsurance,
    language.lblcreditcard,
  ];

  final List services = [
    SubServices(
        title: language.lblaccTitle1,
        subtitle: language.lblaccSubTitle1,
        image: ic_savAcc),
    SubServices(
        title: language.lblaccTitle2,
        subtitle: language.lblaccSubTitle2,
        image: ic_ccs,
    )
  ];


  //AppBar Control
  var userProfileImageUrl = Image.asset(user_img).obs;
  var greeting = ''.obs;
  void getTimeGreeting() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      greeting.value = 'Good Morning';
    } else if (hour >= 12 && hour < 16) {
      greeting.value= 'Good Afternoon';
    } else {
      greeting.value = 'Good Evening';
    }
  }


  //Carousel Control
  List<Widget> carouselItem = [
    Image.asset(db_img,width: double.infinity, fit: BoxFit.cover,),
    Image.asset(db_img,width: double.infinity,),
    Image.asset(db_img,width: double.infinity,),
  ];
  var carouselIndex = 0.obs;

  onPageChanged(int index) {
    carouselIndex.value = index;
  }



}

class SubServices{
  String title;
  String subtitle;
  String image;

  SubServices({
    required this.title,
    required this.subtitle,
    required this.image,
});
}