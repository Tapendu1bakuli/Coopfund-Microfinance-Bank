import 'package:coopfund_microfinance/app/modeules/landing_screen/landing_controller/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../device_manager/screen_constants.dart';
import '../../../../utils/image_utils/image_utils.dart';

class LandingScreen extends GetView<LandingController> {
  const LandingScreen({super.key});

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
        child: const Center(
          child: Text("Landing"),
        ),
      ),
    );
  }
}