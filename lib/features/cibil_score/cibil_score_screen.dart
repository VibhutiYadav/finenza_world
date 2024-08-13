import 'package:finenza_world/components/common_ap_bar.dart';
import 'package:finenza_world/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:score_progress_pretty_display/score_progress_pretty_display.dart';

import '../../utils/helpers/colors.dart';
import 'controller/cibil_controller.dart';

class CibilScoreScreen extends StatefulWidget {
  const CibilScoreScreen({super.key});

  @override
  State<CibilScoreScreen> createState() => _CibilScoreScreenState();
}

class _CibilScoreScreenState extends State<CibilScoreScreen> {
  final CibilController controller = Get.put(CibilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CommonAppBar(title: language.lblcheckCibilSCore),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  child: PrimaryArcAnimationComponent(
                    score: 799,
                    maxScore: 999,
                    arcHeight: 350,
                    arcWidth: 320,
                    backgroundArcStrokeThickness: 15,
                    progressArcStrokeThickness: 15,
                    isRoundEdges: true,
                    minScoreTextFontSize: 30,
                    maxScoreTextFontSize: 50,
                    isRoundOffScoreWhileProgress: true,
                    showOutOfScoreFormat: false,
                    scoreAnimationDuration: Duration(seconds: 2),
                    scoreTextAnimationDuration: Duration(milliseconds: 500),
                    scoreTextStyle: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w900,
                      fontSize: 55,
                      color: Color(0xFF4FB447),
                    ),
                    arcBackgroundColor: Colors.black12,
                    arcProgressGradientColors: [
                      Color(0xFFF82735),
                      Color(0xFFFB8C00),
                      Color(0xFFFCC300),
                      Color(0xFF229D57),
                    ],
                  ),
                ),
                Positioned(
                  top: 120,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    'very good',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF8E949A),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Text(
                    'of 999',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Urbanist-Regular',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF8E949A),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              language.lblcreditScoreInsights,
              textScaleFactor: 1,
              style: TextStyle(
                fontFamily: 'Urbanist-Regular',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: controller.list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      controller.currentIndex.value = index;
                    },
                    child: Obx(() => Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.white,
                          border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.2),),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF6E7588).withOpacity(0.1)
                            )
                          ]
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration:BoxDecoration (
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      color:AppColors.cardColor.withOpacity(0.2),
                                    ),
                                    child: Image.asset(controller.list[index].image, height: 15, width: 15,),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.list[index].title,
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist-Regular',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: Color(0xFF23303B),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      controller.list[index].subtitle,
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist-Regular',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: AppColors.formFieldColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.list[index].percent,
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      fontFamily: 'Urbanist-Regular',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                      color: Color(0xFF269F56),
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    controller.list[index].remark,
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      fontFamily: 'Urbanist-Regular',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: AppColors.formFieldColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),

                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
