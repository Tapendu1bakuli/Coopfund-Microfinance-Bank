import 'dart:io';

import 'package:coopfund_microfinance/routes/app_pages.dart';
import 'package:coopfund_microfinance/utils/Store/HiveStore.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'common/certificateEnabled.dart';
import 'languages/LocalizationService.dart';

void main() async {
  // SettingsService settingsService = Get.put(SettingsService());
  WidgetsFlutterBinding.ensureInitialized();
  final deviceInfoPlugin = DeviceInfoPlugin();
  //final deviceInfo = await deviceInfoPlugin.deviceInfo;

  //final allInfo = deviceInfo.data;
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  print('Running on ${androidInfo.model}');  // e.g. "Moto G (4)"
  print('Running on ${androidInfo.id}');  // e.g. "Moto G (4)"
  print('Running on ${androidInfo.device}');  // e.g. "Moto G (4)"

  // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  // print('Running on ${iosInfo.utsname.machine}');  // e.g. "iPod7,1"
  //
  // WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  // print('Running on ${webBrowserInfo.userAgent}');
  // Example of inserting a worker
  // await dbHelper.insertWorker('John Doe', 0);

  // Example of fetching all workers
  // List<Map<String, dynamic>> workers = await dbHelper.fetchWorkers();
  // print(workers);


  await HiveStore().initBox();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    GetMaterialApp(
      translations: LocalizationService(),
      supportedLocales: LocalizationService.locales,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      initialRoute:Theme1AppPages.INITIAL,
      getPages: Theme1AppPages.routes,
      // themeMode: settingsService.getThemeMode(),
      // theme: settingsService.getLightTheme(),
      // darkTheme: settingsService.getDarkTheme(),
    ),
  );
}
