import 'package:finenza_world/components/common_bank_list.dart';
import 'package:finenza_world/components/controller/common_banklist_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/common_ap_bar.dart';



class LoanBankList extends StatefulWidget {
  final String title;
  const LoanBankList({super.key, required this.title,});

  @override
  State<LoanBankList> createState() => _LoanBankListState();
}

class _LoanBankListState extends State<LoanBankList> {
  final CommonBankListController controller = Get.find<CommonBankListController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),

      body: SingleChildScrollView(
        child:  CommonBankList(title: widget.title, whichScreen: 'loan',),
      ),
    );
  }
}
