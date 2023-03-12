import 'package:flutter/material.dart';
import 'package:fuel_app/core/themes/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key, this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case IconButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray20001:
        return ColorConstant.gray20001;
      case IconButtonVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      case IconButtonVariant.FillBluegray5001:
        return ColorConstant.blueGray5001;
      case IconButtonVariant.OutlineBlack90014:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillBlue50:
        return ColorConstant.blue50;
      case IconButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case IconButtonVariant.FillGray10003:
        return ColorConstant.gray10003;
      case IconButtonVariant.OutlineBlack9000a:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineBluegray40001:
        return null;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray40001:
        return Border.all(
          color: ColorConstant.blueGray40001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray20001:
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.FillBluegray5001:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.OutlineBlack90014:
      case IconButtonVariant.FillBlue50:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillGray10003:
      case IconButtonVariant.OutlineBlack9000a:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case IconButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case IconButtonShape.CircleBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90014:
        return [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              0,
              2,
            ),
          )
        ];
      case IconButtonVariant.OutlineBlack9000a:
        return [
          BoxShadow(
            color: ColorConstant.black9000a,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: const Offset(
              0,
              2,
            ),
          )
        ];
      case IconButtonVariant.FillGray20001:
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.FillBluegray5001:
      case IconButtonVariant.OutlineBluegray40001:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillBlue50:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillGray10003:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  // ignore: constant_identifier_names
  CircleBorder15,
  // ignore: constant_identifier_names
  RoundedBorder10,
  // ignore: constant_identifier_names
  RoundedBorder4,
  // ignore: constant_identifier_names
  CircleBorder21,
}

enum IconButtonPadding {
  // ignore: constant_identifier_names
  PaddingAll8,
  // ignore: constant_identifier_names
  PaddingAll4,
  // ignore: constant_identifier_names
  PaddingAll11,
  // ignore: constant_identifier_names
  PaddingAll14,
}

enum IconButtonVariant {
  // ignore: constant_identifier_names
  FillGray20001,
  // ignore: constant_identifier_names
  FillBluegray50,
  // ignore: constant_identifier_names
  FillBluegray5001,
  // ignore: constant_identifier_names
  OutlineBluegray40001,
  // ignore: constant_identifier_names
  FillWhiteA700,
  // ignore: constant_identifier_names
  OutlineBlack90014,
  // ignore: constant_identifier_names
  FillBlue50,
  // ignore: constant_identifier_names
  FillIndigo50,
  // ignore: constant_identifier_names
  FillGray10003,
  // ignore: constant_identifier_names
  OutlineBlack9000a,
}
