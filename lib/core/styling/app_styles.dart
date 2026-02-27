import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadingStyle = TextStyle(
      fontSize: 30.sp,
      fontFamily: AppFonts.urbanist,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryColor);
  static TextStyle subtitlesStyle = TextStyle(
      fontSize: 16.sp,
      fontFamily: AppFonts.urbanist,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryColor);
  static TextStyle black16SemiBold = TextStyle(
    fontSize: 16.sp ,
    fontWeight: FontWeight.w500,
      fontFamily: AppFonts.urbanist,
      color: AppColors.blackColor
  );
  static TextStyle black15Bold = TextStyle(
    fontSize: 15.sp ,
    fontWeight: FontWeight.bold,
      fontFamily: AppFonts.urbanist,
      color: AppColors.blackColor  
  );
   static TextStyle grey12medium = TextStyle(
    fontSize: 12.sp ,
    fontWeight: FontWeight.w500,
      fontFamily: AppFonts.urbanist,
      color: AppColors.greyColor
  );
}
