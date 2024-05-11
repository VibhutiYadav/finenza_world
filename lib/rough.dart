// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:get/get.dart';
// import 'package:goodvibes/component/back_widget.dart';
// import 'package:goodvibes/component/loader_widget.dart';
// import 'package:goodvibes/main.dart';
// import 'package:goodvibes/utils/colors.dart';
// import 'package:goodvibes/utils/common.dart';
//
// import '../../utils/constant.dart';
//
// class OtpDialogController extends GetxController {
//   final TextEditingController otpController = TextEditingController();
//   final RxBool isLoading = false.obs;
//
//   void submitOtp(Function(String? otpCode) onTap) {
//     final otpCode = otpController.text.trim();
//     if (otpCode.isNotEmpty) {
//       if (otpCode.length >= 6) {
//         hideKeyboard(Get.context!);
//         isLoading.value = true;
//         onTap(otpCode);
//       } else {
//         toast(language.pleaseEnterValidOTP);
//       }
//     } else {
//       toast(language.pleaseEnterValidOTP);
//     }
//   }
//
//   @override
//   void onClose() {
//     otpController.dispose();
//     super.onClose();
//   }
// }
//
// class OtpDialogComponent extends StatelessWidget {
//   final Function(String? otpCode) onTap;
//   final String phone;
//   final OtpDialogController controller = Get.put(OtpDialogController());
//
//   OtpDialogComponent({required this.onTap, required this.phone});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBarWidget(
//         language.confirmOTP,
//         backWidget: BackWidget(iconColor: context.iconColor),
//         textSize: APP_BAR_TEXT_SIZE,
//         elevation: 0,
//         color: context.scaffoldBackgroundColor,
//         systemUiOverlayStyle: SystemUiOverlayStyle(
//           statusBarIconBrightness: appStore.isDarkMode ? Brightness.light : Brightness.dark,
//           statusBarColor: context.scaffoldBackgroundColor,
//         ),
//       ),
//       body: Center(
//         child: Stack(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   50.height,
//                   _buildTopWidget(),
//                   32.height,
//                   TextField(
//                     controller: controller.otpController,
//                     keyboardType: TextInputType.number,
//                     maxLength: 6,
//                     decoration: InputDecoration(
//                       counter: Offstage(),
//                       labelText: language.enterOTP,
//                       border: OutlineInputBorder(),
//                     ),
//                     onChanged: (s) {},
//                   ).fit(),
//                   30.height,
//                   AppButton(
//                     onTap: () {
//                       controller.submitOtp(onTap);
//                     },
//                     text: language.confirm,
//                     color: primaryColor,
//                     textColor: Colors.white,
//                     width: context.width(),
//                   ),
//                 ],
//               ),
//             ),
//             Observer(
//               builder: (_) => LoaderWidget().visible(controller.isLoading.value),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTopWidget() {
//     ThemeData theme = Theme.of(Get.context!);
//     Color textColor = theme.brightness == Brightness.dark ? Colors.white : Colors.black;
//
//     return Container(
//       child: Column(
//         children: [
//           Text(
//             language.lblOtpSubTitle,
//             style: boldTextStyle(size: 20),
//             textAlign: TextAlign.center,
//           ).center().paddingSymmetric(horizontal: 32),
//           16.height,
//           Text(
//             "${language.lblOtpnTitle}",
//             style: secondaryTextStyle(size: 14),
//           ).center(),
//           32.height,
//         ],
//       ),
//     );
//   }
// }
