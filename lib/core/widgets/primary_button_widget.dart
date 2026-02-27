import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.textColor,
      this.onPressed,
      this.hieght,
      this.width,
      this.borderRaduis,
      this.FontSize});
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final void Function()? onPressed;
  final double? hieght;
  final double? width;
  final double? borderRaduis;
  final double? FontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis ?? 8.r),
          ),
          fixedSize: Size(width ?? 331.w, hieght ?? 56.h),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText ?? "",
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: FontSize ?? 17.sp),
        ));
  }
}
