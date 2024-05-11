import 'package:finenza_world/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/images.dart';
import '../main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller/walkthrough_controller.dart';


class WalkThroughScreen extends StatefulWidget {
  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  final WalkThroughController controller = Get.put(WalkThroughController());

  final List<Map<String, String>> pages = [
    {
      'title': language.walkTitle1,
      'title1': language.walkTitle11,
      'image': walk_Img1,
      'subTitle': language.walkThrough1,
      'subTitle1': language.walkThrough11,
    },
    {
      'title': language.walkTitle2,
      'title1': language.walkTitle22,
      'image': walk_Img2,
      'subTitle': language.walkThrough2,
      'subTitle1': language.walkThrough22,
      'subTitle11': language.walkThrough222,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 106,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
              itemCount: pages.length,
              onPageChanged: controller.onPageChanged,
              itemBuilder: (BuildContext context, int index) {
                Map<String, String> page = pages[index];
                return Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(page['image']!, height: MediaQuery.of(context).size.height * 0.40),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,120,0,0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  page['title']!,
                                  style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w400, fontSize: 30)
                              ),
                              SizedBox(height: 10),
                              Text(
                                  page['title1']!,
                                  style: TextStyle(fontFamily: 'Urbanist-Bold',fontWeight: FontWeight.w700, fontSize: 30, color: Color(0xFF004E99))
                              ),
                              SizedBox(height: 10),
                              Text(
                                  page['subTitle']!,
                                  style: TextStyle(fontFamily: 'Urbanist-Light',fontWeight: FontWeight.w400, fontSize: 15)
                              ),
                              Text(
                                  page['subTitle1']!,
                                  style: TextStyle(fontFamily: 'Urbanist-Light',fontWeight: FontWeight.w400, fontSize: 15)
                              ),
                              Text(
                                  page['subTitle11'] != null && page['subTitle11']!.isNotEmpty ? page['subTitle11']! : "",
                                  style: TextStyle(fontFamily: 'Urbanist-Light',fontWeight: FontWeight.w400, fontSize: 15)
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, right: 30),
                  child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: PageController(),
                        count: pages.length,
                        effect: WormEffect(
                          dotWidth: 30,
                          dotHeight: 5,
                          activeDotColor: AppColors.primaryColor,
                          dotColor: AppColors.primaryColor.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(width: 30),
                      MaterialButton(
                        onPressed: controller.currentIndex.value == 0
                            ? controller.onSkipPressed
                            : controller.onNextPressed,
                        color: Color(0xFF004E99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Text(
                          controller.currentIndex.value == 0 ? language.skip : language.btnNext,
                          style: TextStyle(
                            fontFamily: 'Urbanist-Light',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),

          ),

        ],
      ),
    );
  }
}
