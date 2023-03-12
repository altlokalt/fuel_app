import 'package:flutter/material.dart';
import 'package:fuel_app/core/themes/app_export.dart';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var leadingWidth;
    // ignore: prefer_typing_uninitialized_variables
    var leading;
    // ignore: prefer_typing_uninitialized_variables
    var title;
    // ignore: prefer_typing_uninitialized_variables
    var actions;
    // ignore: prefer_typing_uninitialized_variables
    var centerTitle;
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );

