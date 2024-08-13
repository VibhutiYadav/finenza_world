import 'package:finenza_world/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../components/common_ap_bar.dart';
import '../../../../utils/helpers/colors.dart';
import '../controller/loan_screen_controller.dart';
import 'loan_bank_list.dart';

class CommonLoanScreen extends StatefulWidget {
  final String? title;
  const CommonLoanScreen({super.key, this.title,});

  @override
  State<CommonLoanScreen> createState() => _CommonLoanScreenState();
}

class _CommonLoanScreenState extends State<CommonLoanScreen> {
  final LoanController controller = Get.find<LoanController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title ?? language.lblloan),
      ),

      body:   Obx(() => GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        childAspectRatio: 3 / 4,
        mainAxisSpacing: 2,
        shrinkWrap: true,
        children: List.generate(
          controller.imageAssets.length,
              (index) => InkWell(
            onTap: () {
              controller.currentService.value = index;
              Get.to(LoanBankList(title:controller.labels[index]));
              // switch (index) {
              //   case 0:
              //   // Get.to(LoanScreen(title:control.labels[index]));
              //     break;
              //   case 1:
              //   // Get.to(CreditCardScreen(title:control.labels[index]));
              //   default:
              //   // gLoanScreen();
              //     break;
              // }
            },
            child: SizedBox(
              child: Padding(
                padding:EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: controller.currentService.value == index
                            ? AppColors.secondaryColor
                            : AppColors.cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            controller.imageAssets[index],
                            height: 25,
                            width: 25,
                            alignment: Alignment.center,
                            color: controller.currentService.value == index
                                ? Color(0xFFFFFFFF)
                                : AppColors.secondaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    Flexible(
                      child: Text(
                          controller.labels[index],
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.appTextHeaderColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
