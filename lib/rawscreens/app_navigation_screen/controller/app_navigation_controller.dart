import 'package:fuel_app/core/themes/app_export.dart';
import 'package:fuel_app/rawscreens/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

  @override
  void onReady() {
    
  }

  // ignore: unnecessary_overrides
  @override
  void onClose() {
    
  }
}
