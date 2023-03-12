import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:fuel_app/core/routes/app_routes.dart';
import 'package:fuel_app/core/utils/initial_bindings.dart';
import 'package:fuel_app/localization/app_localization.dart';
// ignore: unused_import
import 'package:fuel_app/views/onboarding/onboarding_page.dart';

// ignore: unused_import
import '../controller/wefound_container_controller.dart';
import 'package:get/get.dart';

abstract class WefoundContainerBinding extends Bindings {
  get appBar => null;
  
  get body => null;

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('en', 'US'),
      title: 'fuel_app',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      );
  }
}
