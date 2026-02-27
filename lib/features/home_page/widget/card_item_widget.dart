import 'package:finance_ui_app/core/styling/app_assets.dart';
import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key, this.color, this.height, this.width});
  final double? height;
  final double? width;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Stack(
        children: [
          Container(
            height: height ?? 263.h,
            width: width ?? 270.w,
            decoration: BoxDecoration(
                color: color ?? AppColors.primaryColor,
                borderRadius: BorderRadius.circular(16.r)),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layer1,
              width: width ?? 120.w,
              height: height ?? 130.h,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AppAssets.layer1,
              width: 120.w,
              height: 130.h,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppAssets.layer2,
              width: 207.w,
              height: 200.h,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppAssets.layer2,
              width: 207.w,
              height: 200.h,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "X-Card",
                  style: AppStyles.black15Bold.copyWith(
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                ),
                HeightWidget(57),
                Text("Balance",
                    style: AppStyles.grey12medium.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w600)),
                HeightWidget(10),
                Text(
                  "2,000.00 EG",
                  style: AppStyles.black15Bold
                      .copyWith(fontSize: 20.sp, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: 20.w,
            child: Text(
              "12/24",
              style: AppStyles.black15Bold
                  .copyWith(fontSize: 12.sp, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            child: Text(
              "****  3434",
              style: AppStyles.black15Bold
                  .copyWith(fontSize: 12.sp, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
