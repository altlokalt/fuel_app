// ignore: unnecessary_import
import 'package:fuel_app/core/app_export.dart';
import 'package:fuel_app/core/routes/app_routes.dart';
import 'package:fuel_app/core/themes/app_export.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/controller/app_navigation_controller.dart';
// ignore: unnecessary_import
import 'package:get/get.dart';
// ignore: duplicate_import
import 'package:fuel_app/core/app_export.dart';
//import 'package:fuel_app/presentation/app_navigation_screen/models/app_navigation_model.dart';
// ignore: unused_import
import '../../core/routes/app_routes.dart';
// import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:fuel_app/core/themes/app_export.dart';
// ignore: unused_import
import 'package:fuel_app/rawscreens/app_navigation_screen/models/app_navigation_model.dart';
//import 'models/app_navigation_model.dart';
//import 'package:fuel_app/core/themes/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //backgroundColor: Color.whiteA700,
            body: SizedBox(
                width: getHorizontalSize(375),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                        child: Text("lbl_app_navigation".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style:
                                                AppStyle.txtRobotoRegular20))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20),
                                        child: Text("msg_check_your_app_s".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style:
                                                AppStyle.txtRobotoRegular16))),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        //color: black900
                                        ))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapWefoundContainer();
                                            },
                                            child: Container(
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_wefound_container"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtRobotoRegular20))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              //color: ColorConstant.bluegray400
                                                              ))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapWefoundContainer() {
    Get.toNamed(AppRoutes.wefoundContainerScreen);
  }
}
//  'p'


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


// ignore: unused_element
class _AppNavigationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // build widget here
      throw UnimplementedError();
  }
}

// ignore: unused_element
class _AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

  void dependencies() {
    Get.lazyPut(() => AppNavigationController());
  }
  
}

class AppNavigationModel {}

