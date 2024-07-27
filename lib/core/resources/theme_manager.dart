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
      headlineMedium: getRegularStyle(color: Colors.white,fontSize: FontSize.s18),
      bodyLarge: getRegularStyle(color: Colors.white,fontSize: FontSize.s20,),
      bodySmall: getRegularStyle(color: Colors.white,fontSize: FontSize.s14),
      labelLarge: getBoldStyle(color: Colors.white,fontSize: FontSize.s20),
      headlineSmall: getRegularStyle(color: Colors.white,fontSize: FontSize.s16),
      titleLarge: getRegularStyle(color: Colors.white,fontSize: FontSize.s30,fontFamily: FontConstants.kGtSectraFine),
      headlineLarge: getBoldStyle(color: ColorManger.kBlack,fontSize: FontSize.s18),
    ),
  );

}
