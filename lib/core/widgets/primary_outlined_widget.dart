import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedWidget extends StatelessWidget {
  const PrimaryOutlinedWidget(
      {super.key,
      this.buttonText,
      this.borderColor,
      this.textColor,
      this.onPressed,
      this.hieght,
      this.width,
      this.borderRaduis,
      this.fontSize});
  final String? buttonText;
  final Color? borderColor;
  final Color? textColor;
  final void Function()? onPressed;
  final double? hieght;
  final double? width;
  final double? borderRaduis;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: borderColor ?? AppColors.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis ?? 8.r),
          ),
          fixedSize: Size(width ?? 331.w, hieght ?? 56.h),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText ?? "",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor ?? AppColors.primaryColor,
              fontSize: fontSize ?? 17.sp),
        ));
  }
}
