// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT15:
        return getPadding(
          top: 15,
          right: 15,
          bottom: 15,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGreen300:
        return ColorConstant.green300;
      case ButtonVariant.FillDeeppurpleA400:
        return ColorConstant.deepPurpleA400;
      case ButtonVariant.FillGray20003:
        return ColorConstant.gray20003;
      case ButtonVariant.FillBluegray600:
        return ColorConstant.blueGray600;
      case ButtonVariant.FillBlue5001:
        return ColorConstant.blue5001;
      default:
        return ColorConstant.indigoA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.ActorRegular12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Actor',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.PoppinsBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsBold14Bluegray40002:
        return TextStyle(
          color: ColorConstant.blueGray40002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.AguafinaScriptRegular14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Aguafina Script',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.57,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold10:
        return TextStyle(
          color: ColorConstant.indigoA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      case ButtonFontStyle.PoppinsSemiBold12:
        return TextStyle(
          color: ColorConstant.indigoA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }
}

// ignore: duplicate_ignore
enum ButtonShape {
  // ignore: constan
  Square,
  // ignore: constant
  CircleBorder24,
  // ignore: constan
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll15,
  PaddingT15,
  PaddingAll4,
}

enum ButtonVariant {
  FillIndigoA700,
  FillGreen300,
  FillDeeppurpleA400,
  FillGray20003,
  FillBluegray600,
  FillBlue5001,
}

enum ButtonFontStyle {
  PoppinsBold12,
  ActorRegular12,
  PoppinsBold14,
  PoppinsBold14Bluegray40002,
  AguafinaScriptRegular14,
  PoppinsSemiBold10,
  PoppinsSemiBold12,
}
