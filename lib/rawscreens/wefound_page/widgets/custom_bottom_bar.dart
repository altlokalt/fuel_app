import 'package:flutter/material.dart';
import 'package:fuel_app/core/utils/image_constant.dart';
import 'package:fuel_app/core/utils/size_utils.dart';
import 'package:fuel_app/rawscreens/wefound_page/widgets/custom_image_view.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/utils/color_constant.dart';
//import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({super.key, this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeGreen300,
      type: BottomBarEnum.Homegreen300,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCamera,
      type: BottomBarEnum.Camera,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLocationGray400,
      type: BottomBarEnum.Locationgray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserGray400,
      type: BottomBarEnum.Usergray400,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black9001e,
              spreadRadius: getHorizontalSize(
                2,
              ),
              blurRadius: getHorizontalSize(
                2,
              ),
              offset: const Offset(
                0,
                2,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
               // svgPath:
                bottomMenuList[index].icon,
                height: getVerticalSize(
                  19,
                ),
                width: getHorizontalSize(
                  18,
                ),
                color: ColorConstant.gray400,
              ),
              activeIcon: CustomImageView(
               // svgPath: 
                bottomMenuList[index].icon,
                height: getVerticalSize(
                  20,
                ),
                width: getHorizontalSize(
                  18,
                ),
                color: ColorConstant.green300,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  // ignore: constant_identifier_names
  Homegreen300,
  // ignore: constant_identifier_names
  Camera,
  // ignore: constant_identifier_names
  Locationgray400,
  // ignore: constant_identifier_names
  Usergray400,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
