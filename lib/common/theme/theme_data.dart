import 'package:flutter/material.dart';
import 'package:food_app/common/theme/theme_color.dart';
import 'package:food_app/common/theme/theme_text.dart';

class AppThemeData {
  static get defaultTheme => ThemeData(
      fontFamily: 'OpenSans-Medium',
      primaryColor: AppColor.primaryColor,
      textTheme: ThemeText.defaultTextTheme);
}
