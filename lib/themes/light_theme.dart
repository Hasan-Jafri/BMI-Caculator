import 'package:bmi_calculator/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    // ignore: deprecated_member_use
    canvasColor: Colours.backgroundLight,
    scaffoldBackgroundColor: Colours.backgroundLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colours.backgroundLight,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.coral,
        foregroundColor: Colors.black,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
