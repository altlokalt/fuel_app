// ignore_for_file: prefer_typing_uninitialized_variables

import '../../../theme/app_style.dart';
import '../controller/wefound_controller.dart';
import '../models/section_item_model.dart';
import 'package:flutter/material.dart';
//import 'core/themes/app_themes.dart';
import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class SectionItemWidget extends StatelessWidget {
  
  SectionItemWidget(this.sectionItemModelObj, {super.key});

  SectionItemModel sectionItemModelObj;

  var controller = Get.find<WefoundController>();
  
  get gray10001 => null;
  
  get gray900 => null;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: getMargin(
            right: 14, bottom: 1, top: 1, left: 1,
          ),
          padding: getPadding(
            //            all: 14, 
          left: 2, right: 1, top: 1,
          ),
          decoration: AppDecoration.outlineBlack9001e.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  170,
                ),
                width: getHorizontalSize(
                  252,
                ),
                decoration: BoxDecoration(
                  color: gray10001,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14, left: 2, right: 2,
                ),
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        sectionItemModelObj.companynameTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAclonicaRegular14.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      //svgPath: 
                      ImageConstant.imgStarAmber400,
                      height: getVerticalSize(
                        12,
                      ),
                      width: getHorizontalSize(
                        13,
                      ),
                      margin: getMargin(
                        left: 43,
                        top: 2,
                        bottom: 1, right: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 1, right: 2,
                      ),
                      child: Text(
                        "lbl_5_0_459".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtAguafinaScriptRegular12Gray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14, right: 2, left: 1,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      //svgPath: 
                      ImageConstant.imgLocationGray400,
                      height: getVerticalSize(
                        14,
                      ),
                      width: getHorizontalSize(
                        12,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7, right: 2, top: 2,
                      ),
                      child: Obx(
                        () => Text(
                          sectionItemModelObj.distanceTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAguafinaScriptRegular12Gray500011
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 40, right: 2, bottom: 2, top: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: gray900,
                          width: getHorizontalSize(
                            1,
                          ),
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder7,
                      ),
                      child: Container(
                        height: getSize(
                          14,
                        ),
                        width: getSize(
                          14,
                        ),
                        padding: getPadding(
                          left: 3,
                          right: 3, top: 2,
                        ),
                        decoration: AppDecoration.outlineGray400.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder7,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              //svgPath: 
                              ImageConstant.imgPath,
                              height: getVerticalSize(
                                8,
                              ),
                              width: getHorizontalSize(
                                4,
                              ),
                              alignment: Alignment.topRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7, top: 22, right: 10,
                      ),
                      child: Text(
                        "lbl_3_mins".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAguafinaScriptRegular12Gray500011
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  getPadding({required int top, required Object left, required int right}) {}
  
  getHorizontalSize(double d) {}
  
  getMargin({required int right, required int left, required int bottom, required int top}) {}
  
  getSize(int i) {}
}

class ImageConstant {
  static var imgPath;
  
  static var imgLocationGray400;
  
  static var imgStarAmber400;
}

getVerticalSize(int i) {
}
