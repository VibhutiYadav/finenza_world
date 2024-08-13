import 'package:finenza_world/utils/helpers/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CibilController extends GetxController {
  var nameController = TextEditingController();
  var dobController = TextEditingController();
  var numController = TextEditingController();
  var panController = TextEditingController();
  var mailController = TextEditingController();
  var isAccepted = false.obs ;

  Future<void> selectDate(BuildContext context)async {
    DateTime ? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now()
    );

    if(pickedDate != null){
      dobController.text ="${pickedDate.toLocal()}".split(' ')[0];
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    dobController.dispose();
    numController.dispose();
    panController.dispose();
    mailController.dispose();
    super.dispose();
  }
  var currentIndex = 0.obs;
  final List list=[].obs;
  final List cs = [
    CS(
      title:"Repayment History",
      subtitle: "Never miss due date",
      percent: "95.1%",
      remark: "Very Good",
      image:history_ic,
    ),
    CS(
      title:"Credit Utilisation",
      subtitle: "Keep outstanding <30%",
      image: rs_ic,
      percent: "0%",
      remark: "Excellent",
    ),
    CS(
      title:"Credit Age",
      subtitle: "Above 5 yrs is excellent",
      image: age_ic,
      percent: "2y 4m",
      remark: "Good",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    list.assignAll(cs);
  }
}

class CS{
  String title;
  String subtitle;
  String image;
  String percent;
  String remark;

  CS({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.percent,
    required this.remark,
  });
}
