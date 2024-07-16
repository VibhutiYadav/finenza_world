import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/components/controller/common_banklist_builder.dart';
import 'package:finenza_world/screens/services/credit_card/controller/credit_card_controller.dart';
import 'package:finenza_world/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/common_ap_bar.dart';
import '../../../main.dart';
import '../../../utils/colors.dart';

class CreditCardApplicationScreen extends StatefulWidget {
  final String title;
  const CreditCardApplicationScreen({super.key, required this.title, });

  @override
  State<CreditCardApplicationScreen> createState() => _CreditCardApplicationScreenState();
}

class _CreditCardApplicationScreenState extends State<CreditCardApplicationScreen> {
  final CreditCardController controller = Get.put(CreditCardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.ccType.value.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        // height: Get.height / 4,
                        width: Get.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Theme.of(context).primaryColor.withOpacity(0.5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width / 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.ccType[index].title,
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: AppColors.appTextPrimaryColor,
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(2, 5, 2, 4),
                                            child: Icon(
                                              Icons.circle,
                                              size: 5,
                                              color: AppColors.appTextPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Flexible(
                                            child: Text(
                                              controller.ccType[index].feature1,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(2, 5, 2, 4),
                                            child: Icon(
                                              Icons.circle,
                                              size: 5,
                                              color: AppColors.appTextPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Flexible(
                                            child: Text(
                                              controller.ccType[index].feature2,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(2, 5, 2, 4),
                                            child: Icon(
                                              Icons.circle,
                                              size: 5,
                                              color: AppColors.appTextPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Flexible(
                                            child: Text(
                                              controller.ccType[index].feature3,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(2, 5, 2, 4),
                                            child: Icon(
                                              Icons.circle,
                                              size: 5,
                                              color: AppColors.appTextPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Flexible(
                                            child: Text(
                                              controller.ccType[index].feature4,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Container(
                                            padding: EdgeInsets.fromLTRB(2, 5, 2, 4),
                                            child: Icon(
                                              Icons.circle,
                                              size: 5,
                                              color: AppColors.appTextPrimaryColor,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Flexible(
                                            child: Text(
                                              controller.ccType[index].feature5,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: Get.width / 3.2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        cc_ic1,
                                        width: 100,
                                        height: 63,
                                      ),
                                      SizedBox(height: 10),
                                      MaterialButton(
                                        color: AppColors.secondaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        onPressed: () {
                                          // Your onPressed logic here
                                        },
                                        child: Text(
                                          language.lblapply,
                                          textScaleFactor: 1,
                                          style: TextStyle(
                                            fontFamily: 'Urbanist-Regular',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        minWidth: Get.width / 4,
                                        height: 40,
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
