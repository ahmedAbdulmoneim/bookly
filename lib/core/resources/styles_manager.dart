
import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,String fontFamily) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color);
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color, String? fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManger.regular, color,fontFamily ?? FontConstants.mainFontFamily);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color, String? fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManger.medium, color,fontFamily ?? FontConstants.mainFontFamily);
}

// light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color, String? fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManger.light, color,fontFamily ?? FontConstants.mainFontFamily);
}

// semi bold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color, String? fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManger.semiBold, color,fontFamily ?? FontConstants.mainFontFamily);
}

// bold style

TextStyle getBoldStyle(
    {double fontSize = FontSize.s12, required Color color, String? fontFamily}) {
  return _getTextStyle(fontSize, FontWeightManger.bold, color,fontFamily ?? FontConstants.mainFontFamily);
}