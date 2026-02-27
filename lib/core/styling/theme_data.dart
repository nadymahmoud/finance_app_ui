import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_fonts.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: AppFonts.urbanist,
      textTheme: TextTheme(
          titleLarge: AppStyles.primaryHeadingStyle,
          titleMedium: AppStyles.subtitlesStyle),
      buttonTheme: ButtonThemeData(
          buttonColor: AppColors.primaryColor,
          disabledColor: AppColors.secondaryColor));
}
