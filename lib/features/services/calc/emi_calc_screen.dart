import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/components/controller/common_banklist_controller.dart';
import 'package:finenza_world/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/common_ap_bar.dart';
import '../../../utils/helpers/colors.dart';

class EMICalcScreen extends StatefulWidget {
  final String? title;
  const EMICalcScreen({super.key, this.title});

  @override
  State<EMICalcScreen> createState() => _EMICalcScreenState();
}

class _EMICalcScreenState extends State<EMICalcScreen> {
  final CommonBankListController controller = Get.put(CommonBankListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title ?? language.lblemiCalc),
      ),
    );
  }
}
