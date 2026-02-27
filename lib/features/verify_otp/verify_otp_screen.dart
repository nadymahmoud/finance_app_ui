import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/styling/app_styles.dart';
import '../../core/widgets/spacing_widget.dart';
import '../auth/widgets/back_button_widget.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeightWidget(12),
              BackButtonWidget(),
              HeightWidget(28),
              Text(
                "OTP Verification",
                style: AppStyles.primaryHeadingStyle,
              ),
              HeightWidget(10),
              Text(
                "Enter the verification code we just sent on your email address. ",
                style: AppStyles.subtitlesStyle,
              ),
              HeightWidget(32),
              PinCodeTextField(
                  textStyle: AppStyles.primaryHeadingStyle.copyWith(
                    fontSize: 22.sp,
                  ),
                  keyboardType: TextInputType.number,
                  enableActiveFill: true,
                  pinTheme: PinTheme(
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: AppColors.greyColor.withOpacity(0.1),
                    selectedColor: AppColors.primaryColor,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    fieldHeight: 60.h,
                    fieldWidth: 70.w,
                    selectedFillColor: Colors.white,
                    activeFillColor: Colors.white,
                  ),
                  onCompleted: (value) {
                    print(value);
                  },
                  appContext: context,
                  length: 4),
              HeightWidget(38),
              PrimaryButtonWidget(buttonText: "Verify", onPressed: () {}),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive a code? ",
                    style: AppStyles.subtitlesStyle.copyWith(fontSize: 16.sp),
                  ),
                  Text(
                    "Resend",
                    style:
                        AppStyles.primaryHeadingStyle.copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
              HeightWidget(24),
            ],
          ),
        ),
      ),
    );
  }
}
