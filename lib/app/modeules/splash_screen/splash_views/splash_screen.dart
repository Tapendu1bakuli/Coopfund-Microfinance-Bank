import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../device_manager/screen_constants.dart';
import '../../../../utils/image_utils/image_utils.dart';
import '../splash_controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtils.authenticationBackgroundImage),
              fit: BoxFit.cover,
            )),
        child: Center(
          child: controller.casual!.value?Image.asset(
            ImageUtils.loginTopLogo,
            height: ScreenConstant.screenHeightSixth,
          ):const Offstage(),
        ),
      ),
    );
  }
}