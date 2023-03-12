// ignore_for_file: must_call_super, duplicate_ignore

import 'package:fuel_app/core/themes/app_export.dart';
import 'package:fuel_app/rawscreens/wefound_container_screen/models/wefound_container_model.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/wefound_page/widgets/custom_bottom_bar.dart';

// ignore: duplicate_ignore
class WefoundContainerController extends GetxController {
  Rx<WefoundContainerModel> wefoundContainerModelObj =
      WefoundContainerModel().obs;

  WefoundContainerController(Set set);

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

  // ignore: must_call_super
  @override
  void onInit() {
  
  }
}
