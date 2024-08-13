import 'package:finenza_world/components/common_ap_bar.dart';
import 'package:finenza_world/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/colors.dart';
import '../controller/loan_screen_controller.dart';

class LoanApplicationScreen extends StatefulWidget {
  final String title;

  const LoanApplicationScreen({super.key, required this.title});

  @override
  State<LoanApplicationScreen> createState() => _LoanApplicationScreenState();
}

class _LoanApplicationScreenState extends State<LoanApplicationScreen> {

  @override
  Widget build(BuildContext context) {
    final LoanController controller = Get.put(LoanController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CommonAppBar(
          title: widget.title,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   widget.title,
            //   textScaleFactor: 1,
            //   style: TextStyle(
            //       fontFamily: 'Urbanist-Regular',
            //       fontWeight: FontWeight.w600,
            //       fontSize: 20,
            //       color: AppColors.appTextLabelColor),
            // ),
            // SizedBox(height: 10),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: controller.loanType.value.length,
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
                            Text(
                              controller.loanType[index].title,
                              textScaleFactor: 1,
                              style: TextStyle(
                                fontFamily: 'Urbanist-Regular',
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: AppColors.appTextPrimaryColor,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: Get.width / 2.4 ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        language.lblfeatures,
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
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
                                              controller.loanType[index].feature1,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
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
                                              controller.loanType[index].feature2,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(width: 18,),
                                Container(
                                  width: Get.width / 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        language.lblloanAmount,
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Flexible(
                                            child: Text(
                                              controller.loanType[index].loanAmount,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        language.lblmaxTenure,
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                          fontFamily: 'Urbanist-Regular',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: AppColors.primaryColor,
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,  // Align items at the start vertically
                                        children: [
                                          Flexible(
                                            child: Text(
                                              controller.loanType[index].maxTenure,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              textScaleFactor: 1,
                                              style: TextStyle(
                                                fontFamily: 'Urbanist-Regular',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: AppColors.appTextPrimaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                Image.asset(
                                  controller.loanType[index].image,
                                  height: 60,
                                ),
                                // Container(
                                //   decoration: BoxDecoration(![](C:/Users/PC/Downloads/Rectangle 2980.png)
                                //     border: Border.all(
                                //       color: Theme.of(context).primaryColor,
                                //     ),
                                //     borderRadius: BorderRadius.circular(10),
                                //   ),
                                //   child: Image.asset(
                                //     controller.loanType[index].image,
                                //     height: 50,
                                //   ),
                                // ),
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
