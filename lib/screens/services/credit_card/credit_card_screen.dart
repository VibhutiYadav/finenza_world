import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/components/controller/common_banklist_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/common_ap_bar.dart';
import '../../../utils/colors.dart';

class CreditCardScreen extends StatefulWidget {
  final String title;

  const CreditCardScreen({super.key, required this.title});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  final CommonBankListController controller = Get.put(CommonBankListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),

      body: SingleChildScrollView(
        child:  CommonBankList(title: widget.title, whichScreen: 'creditcard',),
      ),
    );
  }
}
