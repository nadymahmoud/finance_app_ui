import 'package:finance_ui_app/core/routing/app_routes.dart';
import 'package:finance_ui_app/core/styling/app_assets.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_app/core/widgets/primary_outlined_widget.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBoard,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          HeightWidget(21),
          PrimaryButtonWidget(
            onPressed: () {
              context.pushNamed(AppRoutes.loginScreen);
            },
            buttonText: "Login",
            hieght: 56.h,
            width: 331.w,
          ),
          HeightWidget(15),
          PrimaryOutlinedWidget(
            onPressed: () {
              context.pushNamed(AppRoutes.mainScreen);
            },
            buttonText: "Register",
            hieght: 56.h,
            width: 331.w,
          ),
          HeightWidget(46),
          Text(
            "Continue as a guest",
            style: AppStyles.black15Bold.copyWith(
                decoration: TextDecoration.underline, color: Color(0xff202955)),
          )
        ],
      ),
    );
  }
}
