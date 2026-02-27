import 'package:finance_ui_app/core/styling/app_assets.dart';
import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotification extends StatelessWidget {
  const TopProfileNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          AppAssets.onBoard,
          width: 48.w,
          height: 48.h,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        "Welcome back",
        style: AppStyles.grey12medium,
      ),
      subtitle: Text(
        "Nady Mahmoud",
        style: AppStyles.black15Bold,
      ),
      trailing: Container(
        width: 48.w,
        height: 48.h,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE3E9ED)),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.notifications,
          size: 24.sp,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
