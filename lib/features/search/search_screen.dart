import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/common_ap_bar.dart';

class SearchScreen extends StatefulWidget {
  final String title;
  const SearchScreen({super.key, required this.title});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),
      body: Column(
        children: [
          Container(

          ),
        ],
      ),
    );
  }
}
