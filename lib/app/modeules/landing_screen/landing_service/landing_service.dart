import 'package:coopfund_microfinance/app/modeules/landing_screen/landing_controller/landing_controller.dart';
import 'package:get/get.dart';

class LandingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
          () => LandingController(),
    );
  }

}