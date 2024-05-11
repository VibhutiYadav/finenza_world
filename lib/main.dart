import 'package:finenza_world/locale/languages.dart';
import 'package:finenza_world/locale/languages_en.dart';
import 'package:finenza_world/screens/splash_screen.dart';
import 'package:finenza_world/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


//Region GlobalVariables
BaseLanguage language = LanguagesEn();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF004E99)),

          useMaterial3: true,
       // primarySwatch:  MaterialColor(
       //  
       // )
      ),
      home: SplashScreen(),
    );
  }
}