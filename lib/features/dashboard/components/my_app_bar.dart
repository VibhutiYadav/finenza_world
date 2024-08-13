import 'package:finenza_world/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/helpers/colors.dart';
import '../../../utils/helpers/images.dart';
import '../controller/home_controller.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.put(HomeController());
    return AppBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      toolbarHeight: MediaQuery.of(context).size.height,
      backgroundColor: AppColors.secondaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  user_img,
                  width: 49,
                  height: 49,
                  fit: BoxFit.cover,
                ),
              ),
             SizedBox(width: 5),
            Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Obx(()=>
                     Text(controller.greeting.value,
                       textScaleFactor: 1,
                     style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.appTextSecondaryColor),
                     ),
                 ),
                 SizedBox(height: 2),
                 Text(language.lblhello,
                   textScaleFactor: 1,
                   style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.appTextSecondaryColor),
                 ),
               ],
             ),
            ],
          ),

          Container(
            decoration: BoxDecoration(  shape: BoxShape.circle),
            height: 36,
            padding: EdgeInsets.all(8),
            width: 36,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                Positioned(
                  top: -2,
                  right: -5,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
