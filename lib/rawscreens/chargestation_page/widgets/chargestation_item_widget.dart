import '../../../theme/app_style.dart';
import '../controller/chargestation_controller.dart';
import '../models/chargestation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class ChargestationItemWidget extends StatelessWidget {
  ChargestationItemWidget(this.chargestationItemModelObj, {super.key});

  ChargestationItemModel chargestationItemModelObj;

  var controller = Get.find<ChargestationController>();
  
  get gray300 => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 14,
        right: 8,
        bottom: 14,
      ),
      decoration: AppDecoration.outlineBlack9000a.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 8,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        chargestationItemModelObj.typeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAclonicaRegular16.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Obx(
                        () => Text(
                          chargestationItemModelObj.pointsCounterTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAguafinaScriptRegular12.copyWith(
                            letterSpacing: getHorizontalSize(
                              1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  57,
                ),
                width: getHorizontalSize(
                  69,
                ),
                margin: getMargin(
                  left: 38, width: 1,
                ),
                decoration: BoxDecoration(
                  color: gray300,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 12,
              bottom: 1,
            ),
            child: Obx(
              () => Text(
                chargestationItemModelObj.priceTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAclonicaRegular16.copyWith(
                  letterSpacing: getHorizontalSize(
                    1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
