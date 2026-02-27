import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomePageItem extends StatelessWidget {
  const CustomHomePageItem(
      {super.key,
      required this.title,
      required this.describtion,
      required this.iconData});
  final String title;
  final String describtion;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            HeightWidget(17),
            Container(
              alignment: Alignment.center,
              child: Icon(
                iconData,
                color: AppColors.primaryColor,
              ),
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffECF1F6)),
            ),
            HeightWidget(12),
            Text(
              title,
              style: AppStyles.black15Bold.copyWith(fontSize: 17.sp),
            ),
            HeightWidget(4),
            Text(
              describtion,
              style: AppStyles.grey12medium,
            ),
          ],
        ),
      ),
      height: 120.h,
      width: 156.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Color(0xffE3E9ED), width: 2)),
    );
  }
}
