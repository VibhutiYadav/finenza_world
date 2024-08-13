import 'package:finenza_world/binding/splash/splash_binding.dart';
import 'package:finenza_world/locale/languages.dart';
import 'package:finenza_world/locale/languages_en.dart';
import 'package:finenza_world/utils/helpers/colors.dart';
import 'package:finenza_world/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'features/splash/view/splash_screen.dart';


//Region GlobalVariables
BaseLanguage language = LanguagesEn();

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: AppColors.primaryColor ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Finenza World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF004E99)),

          useMaterial3: true,
      ),
      initialRoute: '/splash',
      getPages: AppRoutes.pages,
      initialBinding: SplashBinding(),
    );
  }
}
