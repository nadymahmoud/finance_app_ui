import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui_app/features/home_page/widget/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            HeightWidget(17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonWidget(),
                Text(
                  "All Cards",
                  style: AppStyles.black15Bold.copyWith(fontSize: 18.sp),
                ),
                Container(
                  child: Icon(
                    Icons.more_horiz_outlined,
                    color: AppColors.primaryColor,
                  ),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.greyColor.withOpacity(0.4))),
                ),
              ],
            ),
            HeightWidget(24),
            CardItemWidget(
              height: 179.h,
              width: 327.w,
            ),
            HeightWidget(24),
            CardItemWidget(
              color: Color(0xff303A6E),
              height: 179.h,
              width: 327.w,
            ),
          ],
        ),
      ),
    );
  }
}
