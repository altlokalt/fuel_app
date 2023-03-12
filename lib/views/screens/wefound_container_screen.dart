import '../../core/themes/app_themes.dart';
// ignore: unused_import
import '../../rawscreens/wefound_container_screen/controller/wefound_container_controller.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fuel_app/views/screens/chargestation_page.dart';
// ignore: unused_import
import 'package:fuel_app/views/screens/wefound_page.dart';
import 'package:fuel_app/rawscreens/wefound_page/widgets/custom_bottom_bar.dart';
// ignore: unnecessary_import
import 'package:get/get.dart';

// ignore: unnecessary_import
import 'package:fuel_app/core/themes/app_export.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/wefound_container_screen/models/wefound_container_model.dart';
// ignore: unused_import, duplicate_import
import 'package:fuel_app/rawscreens/wefound_page/widgets/custom_bottom_bar.dart';

class WefoundContainerScreen extends GetWidget<WefoundContainerController> {
  const WefoundContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.wefoundPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                   // page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homegreen300:
        return AppRoutes.wefoundPage;
      case BottomBarEnum.Camera:
        return "/";
      case BottomBarEnum.Locationgray400:
        return AppRoutes.chargestationPage;
      case BottomBarEnum.Usergray400:
        return "/";
      default:
        return "/";
    }
  }

  Object getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.wefoundPage:
        return WefoundPage();
      case AppRoutes.chargestationPage:
        return ChargestationPage();
      default:
        return const DefaultWidget();
    }
  }
}


class WefoundContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WefoundContainerController());
  }
}

class WefoundPage {
}

class WefoundContainerModel {}

class ChargestationPage {
}

// ignore: duplicate_ignore
class WefoundContainerController extends GetxController {
  Rx<WefoundContainerModel> wefoundContainerModelObj =
      WefoundContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// ignore: todo
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    
  }
}
