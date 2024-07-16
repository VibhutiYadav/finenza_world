import 'package:finenza_world/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/common_ap_bar.dart';
import '../../components/cached_network_image.dart';

class ProfileScreen extends StatefulWidget {
  final String title;
  const ProfileScreen({super.key, required this.title});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child:  CommonAppBar(title: widget.title,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
              SizedBox(
                height: context.height/5,
                child: Card(
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.primaryColor, width: 2),
                      ),
                      child: ClipRRect(child: cached_network_image(image: null, fit: null,))
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
