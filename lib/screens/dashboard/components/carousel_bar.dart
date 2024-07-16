import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../utils/colors.dart';
import '../controller/home_controller.dart';

class CarouselBar extends StatefulWidget {
  @override
  State<CarouselBar> createState() => _CarouselBarState();
}

class _CarouselBarState extends State<CarouselBar> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CarouselSlider(
            items:controller.carouselItem,
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              onPageChanged: (index,reason) {
                controller.onPageChanged(index);
              },
            ),
          ),
         Obx(() =>   SmoothPageIndicator(
           controller: PageController(
             initialPage: controller.carouselIndex.value    ,
             onAttach: (position) {
                 controller.carouselIndex.value;
             },
           ),
           count: controller.carouselItem.length,
           effect: WormEffect(
             dotWidth: 10,
             dotHeight: 4,
             activeDotColor: AppColors.secondaryColor,
             dotColor: AppColors.primaryColor.withOpacity(0.5),
             paintStyle: PaintingStyle.fill,
           ),
         ),)
        ],
      ),
    );
  }
}
