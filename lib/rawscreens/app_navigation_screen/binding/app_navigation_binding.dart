import 'package:flutter/widgets.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/controller/app_navigation_controller.dart';
import 'package:get/get.dart';
import 'package:fuel_app/core/app_export.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/models/app_navigation_model.dart';

//class AppNavigationBinding extends Bindings 
//{@override void dependencies() {  Get.lazyPut(() => 
//AppNavigationController()); }}

//

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // build widget here
      throw UnimplementedError();
  }
}

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
  
}

class AppNavigationModel {}

