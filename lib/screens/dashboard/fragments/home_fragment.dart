import 'package:finenza_world/screens/dashboard/components/carousel_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../components/my_app_bar.dart';
import '../components/service_component.dart';
import '../controller/home_controller.dart';

class HomeFragment extends StatelessWidget {
  final HomeController controller = Get.put( HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child:  MyAppBar(),
          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width:context.width*2 ,height: 200,
                      child: CarouselBar()
                  ),
                 SizedBox(height: 10),
                  Container(
                    // color: Colors.red,
                      width:context.width*2 ,
                      child: ServiceComponent(control:controller),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
