import 'package:finenza_world/main.dart';
import 'package:finenza_world/screens/cibil_score/splash_view.dart';
import 'package:finenza_world/screens/services/calc/emi_calc_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../services/credit_card/credit_card_screen.dart';
import '../../services/insurance/insurance_screen.dart';
import '../../services/loan/common_loan_screen.dart';
import '../controller/home_controller.dart';
import '../fragments/home_fragment.dart';

class ServiceComponent extends StatelessWidget {
  final HomeController control;

  const ServiceComponent({Key? key, required this.control}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
             language.lblservices,
              textScaleFactor: 1,
             style:TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.appTextHeaderColor),
         ),
         SizedBox(height: 15),
         _serviceContainer(context),
         SizedBox(height: 15),
         Container( width:context.width*2,
             child: _bottomContainer(context)
         ),
       ],
    );
  }

  Widget _serviceContainer(BuildContext context) {
    return Obx(() => GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 16,
      childAspectRatio: 3 / 4,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      children: List.generate(
        control.imageAssets.length,
            (index) => InkWell(
          onTap: () {
            control.currentService.value = index;
            // Get.to(CreditCardScreen(title:control.labels[index]));
            switch (index) {
              case 0:
                Get.to(CommonLoanScreen(title:control.labels[index]));
                break;
              case 1:
                Get.to(CreditCardScreen(title:control.labels[index]));
                 break;
              case 2:
                Get.to(InsuranceScreen(title:control.labels[index]));
                break;
              case 3:
                Get.to(EMICalcScreen(title:control.labels[index]));
                break;
              default:
                HomeFragment();
                break;
            }
          },
          child: SizedBox(
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: control.currentService.value == index
                        ? AppColors.secondaryColor
                        :  AppColors.cardColor,
                        // : Theme.of(context).primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          control.imageAssets[index],
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          color: control.currentService.value == index
                              ? Colors.white
                              : AppColors.secondaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Flexible(
                  child: Text(control.labels[index],
                      textScaleFactor: 1,
                      textAlign: TextAlign.center,
                      style:TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.appTextHeaderColor)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _bottomContainer(BuildContext context) {
    return Obx(() => GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      childAspectRatio: 7/4,
      // mainAxisSpacing: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(
        control.services.length,
            (index) => InkWell(
          onTap: () {
            print("index----$index");
            control.subservice.value = index;
            switch (index) {
              case 0:
                Get.to(()=>CommonLoanScreen(title:control.labels[index]));
                break;
              case 1:
                Get.to(()=>CibilSplashView());
              default:
                HomeFragment();
                break;
            }


          },
          child: Container(
            height: 200,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: control.subservice.value == index
                  ? AppColors.secondaryColor
                  : Theme.of(context).primaryColor.withOpacity(0.2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    control.services[index].image,
                    height: 20,
                    color: control.subservice.value == index
                        ? Colors.white
                        : AppColors.primaryColor,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  control.services[index].title,
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontFamily: 'Urbanist-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: control.subservice.value == index
                        ? Colors.white
                        : Colors.black,
                  ),

                ),
                Text(
                  control.services[index].subtitle,
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontFamily: 'Urbanist-Regular',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: control.subservice.value == index
                        ? Colors.white
                        : AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }


}
