import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/colors.dart';
class CommonAppBar extends StatelessWidget {
  final String title;

  const CommonAppBar({Key? key, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      toolbarHeight: MediaQuery.of(context).size.height,
      backgroundColor: AppColors.secondaryColor,
      automaticallyImplyLeading: false,
      leading:   InkWell(
        onTap: (){
          Get.back();
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      actions: [ Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
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
      ),],
      title: Text(
        title,
        textScaleFactor: 1,
        style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.appTextSecondaryColor),
      ),

    );
  }
}
