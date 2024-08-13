import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/common_ap_bar.dart';

class RecentScreen extends StatefulWidget {
  final String title;
  const RecentScreen({super.key, required this.title});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child:  CommonAppBar(title: widget.title,),
      ),
    );
  }
}
