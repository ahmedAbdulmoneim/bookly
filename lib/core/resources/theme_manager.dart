import 'package:bookly/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationDarkTheme() {

  return ThemeData.dark().copyWith(
    // main color
    scaffoldBackgroundColor: ColorManger.primaryColor,
    // text theme
    textTheme: TextTheme(

      titleMedium: getSemiBoldStyle(color: ColorManger.whit,fontSize: FontSize.s16),
      headlineMedium: getRegularStyle(color: Colors.white,fontSize: FontSize.s18)
    ),
  );

}
