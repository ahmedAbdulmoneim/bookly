import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main color
      scaffoldBackgroundColor: ColorManger.primaryColor);
}
