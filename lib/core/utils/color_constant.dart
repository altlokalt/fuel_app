import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color green300 = fromHex('#70c786');

  static Color gray5001 = fromHex('#f8f8f8');

  static Color gray5002 = fromHex('#f9f9f9');

  static Color black90000 = fromHex('#00000000');

  static Color gray20001 = fromHex('#ebefed');

  static Color blueGray90002 = fromHex('#2c2d38');

  static Color blueGray90001 = fromHex('#2a2f2c');

  static Color gray20002 = fromHex('#f2eae8');

  static Color deepPurpleA400 = fromHex('#623bea');

  static Color blueGray900 = fromHex('#2e3331');

  static Color gray20003 = fromHex('#e9e9e9');

  static Color gray20004 = fromHex('#ededed');

  static Color black9000a = fromHex('#0a000000');

  static Color gray400 = fromHex('#bcc3be');

  static Color blueGray100 = fromHex('#d1d5d3');

  static Color gray800 = fromHex('#3e3f46');

  static Color gray200 = fromHex('#eaebec');

  static Color blue50 = fromHex('#e9edff');

  static Color gray10003 = fromHex('#f3f4f4');

  static Color gray10002 = fromHex('#f4f6f6');

  static Color indigoA700 = fromHex('#062ceb');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#eff7f1');

  static Color blueGray40003 = fromHex('#888992');

  static Color blueGray40002 = fromHex('#77838f');

  static Color blueGray40001 = fromHex('#789880');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray50 = fromHex('#ebf1ef');

  static Color blueGray10001 = fromHex('#d7d7d7');

  static Color blueGray10002 = fromHex('#c9d2cd');

  static Color blueGray10003 = fromHex('#d4dcd8');

  static Color blueGray10004 = fromHex('#d2d2d2');

  static Color indigoA200 = fromHex('#7077ff');

  static Color blueGray10005 = fromHex('#cbccd6');

  static Color gray50 = fromHex('#fafafa');

  static Color black9001e = fromHex('#1e000000');

  static Color teal400 = fromHex('#3ec281');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#959f97');

  static Color gray50003 = fromHex('#a3a4ab');

  static Color blueGray800 = fromHex('#3d4267');

  static Color gray50002 = fromHex('#aea8a6');

  static Color blue5001 = fromHex('#eaedff');

  static Color deepOrange400 = fromHex('#f08240');

  static Color blueGray5001 = fromHex('#ecf1f0');

  static Color gray500 = fromHex('#999e9b');

  static Color blueGray400 = fromHex('#858b88');

  static Color indigo50 = fromHex('#ecedff');

  static Color blueGray600 = fromHex('#565e97');

  static Color gray900 = fromHex('#1d201e');

  static Color gray90001 = fromHex('#1e2022');

  static Color gray30004 = fromHex('#e6e6e6');

  static Color gray30003 = fromHex('#dcddea');

  static Color gray300 = fromHex('#e2e9e6');

  static Color gray30002 = fromHex('#dddeeb');

  static Color gray30001 = fromHex('#e5e9e6');

  static Color gray100 = fromHex('#f0f8f2');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color black90034 = fromHex('#34000000');

  static Color black90033 = fromHex('#33000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
