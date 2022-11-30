import 'package:flutter/material.dart';

class CustomColor {
  static Color colorPrimary = HexColor.fromHex('#F6F7FA');
  static Color colorAccent = HexColor.fromHex('#00B1EB');
  static Color colorAccentMedium = HexColor.fromHex('#004F9F');
  static Color colorAccentDark = HexColor.fromHex('#0E2B63');
  static Color colorGray = HexColor.fromHex('#B8B8B9');
  static Color colorGrayLight = HexColor.fromHex('#EEEFF0');
  static Color colorGrayMedium = HexColor.fromHex('#EEEEEE');
  static Color colorGrayDark = HexColor.fromHex('#FF9E9E9E');
  static Color colorGreen = HexColor.fromHex('#FF4CAF50');
  static Color colorLight = HexColor.fromHex('#9FA5C2');
  static Color colorLighter = HexColor.fromHex('#F3F3F3');
  static Color colorBlueMedium = HexColor.fromHex('#215C98');
  static Color colorBlue = HexColor.fromHex('#132961');
  static Color colorLightBlue = HexColor.fromHex('#0B4FA0');
  static Color colorYellow = HexColor.fromHex('#FFBB00');
  static Color colorAmber = HexColor.fromHex('#FFC000');
  static Color colorRed = HexColor.fromHex('#FF0000');
  static Color gradientBarStart = HexColor.fromHex('#226cc5');
  static Color gradientBarEnd = HexColor.fromHex('#6cd975');
  static Color gradientMainContentStart = HexColor.fromHex('#2C5364');
  static Color gradientMainContentCenter = HexColor.fromHex('#203A43');
  static Color gradientMainContentEnd = HexColor.fromHex('#0F2027');

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
