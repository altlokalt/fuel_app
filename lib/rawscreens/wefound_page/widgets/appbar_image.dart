// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  var img;
  
  var imagePath;
  
  var width;
  
  var margin;
  
  var onTap;
  
  var svgPath;

  // ignore: use_key_in_widget_constructors
  AppbarImage( double height, double horizontalSize, 
      this.width,
      this.imagePath,
      this.svgPath,
      this.margin,
      this.onTap, { img, required bool centerTitle, required Text title, required Function() overflow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          //svgPath: svgPath,
          //imagePath: imagePath,
          //height:
           height,
          width: width,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
