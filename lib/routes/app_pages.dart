import 'package:coopfund_microfinance/app/modeules/landing_screen/landing_service/landing_service.dart';
import 'package:coopfund_microfinance/app/modeules/landing_screen/landing_views/landing_screen.dart';
import 'package:coopfund_microfinance/routes/routes.dart';
import 'package:get/get.dart';

import '../app/modeules/splash_screen/splash_binding/splash_binding.dart';
import '../app/modeules/splash_screen/splash_views/splash_screen.dart';


class Theme1AppPages {
  static const INITIAL = Routes.ROOT;
  static const INITIAL_FOR_HOME_ = Routes.LANDING;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => const LandingScreen(),
      binding: LandingBinding(),
    ),
  ];
}