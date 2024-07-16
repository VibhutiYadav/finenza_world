import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/components/controller/common_banklist_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/common_ap_bar.dart';
import '../../../utils/colors.dart';

class InsuranceScreen extends StatefulWidget {
  final String title;
  const InsuranceScreen({super.key, required this.title});

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  final CommonBankListController controller = Get.put(CommonBankListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),

      body: SingleChildScrollView(
        child:  CommonBankList(title: widget.title, whichScreen: 'insurance',),
      ),
    );
  }
}
