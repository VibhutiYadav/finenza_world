import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/helpers/colors.dart';
import 'controller/common_banklist_controller.dart';

class CommonBankList extends StatelessWidget {
  final String title;
  final String whichScreen;
  const CommonBankList({super.key, required this.title, required this.whichScreen});

  @override
  Widget build(BuildContext context) {
    final CommonBankListController controller = Get.put(CommonBankListController());
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: controller.banks.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.bankListIndex.value = index;
            controller.screenNavigator(whichScreen ,index, title);
            // Get.to(LoanApplicationScreen(title: title));
            // Get.to(CreditCardApplicationScreen(title:controller.banks[index].title));

          },
          child: Obx(() => Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Container(
              height: 80,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.white,
                  border: Border.all(color:  Theme.of(context).primaryColor.withOpacity(0.2),)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          controller.banks[index].image,
                          height: 100,
                        ),
                      ),
                      // SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.banks[index].title,
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontFamily: 'Urbanist-Regular',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.appTextPrimaryColor,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            controller.banks[index].subtitle,
                            textScaleFactor: 1,
                            style: TextStyle(
                              fontFamily: 'Urbanist-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
