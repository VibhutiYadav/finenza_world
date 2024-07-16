import 'package:cached_network_image/cached_network_image.dart';
import 'package:finenza_world/utils/colors.dart';
import 'package:finenza_world/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class cached_network_image extends StatelessWidget {
  const cached_network_image({super.key,required this.image, required this.fit});

  final image;
  final fit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:" imageUrl",
      width: context.width,
      fit: fit == "" ?  BoxFit.contain : fit,
      memCacheWidth: 400,
      memCacheHeight: 400,
      height: MediaQuery.of(context).size.height *0.068,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: AppColors.formFieldColor,
          highlightColor: AppColors.hintTextColor,
          child: Container(
            width: context.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
         ),
      // errorWidget: (context, url, error) => Image.asset(appLogo),
      errorWidget: (context, url, error) => Icon(
        Icons.person,
      ),
    );
  }
}
