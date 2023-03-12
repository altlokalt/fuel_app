import 'package:fuel_app/core/themes/app_export.dart';
import 'package:fuel_app/rawscreens/chargestation_page/models/chargestation_model.dart';
import 'package:flutter/material.dart';

class ChargestationController extends GetxController {
  ChargestationController(this.chargestationModelObj);

  TextEditingController itemOneController = TextEditingController();

  TextEditingController itemTwoController = TextEditingController();

  Rx<ChargestationModel> chargestationModelObj;

  @override
  void onReady() {
  
  }

  @override
  void onClose() {
    super.onClose();
    itemOneController.dispose();
    itemTwoController.dispose();
  }
}
