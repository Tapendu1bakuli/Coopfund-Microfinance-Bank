import 'dart:async';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../routes/routes.dart';

class SplashController extends GetxController{
  RxBool? casual = true.obs;
  @override
  void onReady() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    Timer(const Duration(seconds: 3), () async {
        Get.offAllNamed(Routes.LANDING);
    });
    super.onReady();
  }
}