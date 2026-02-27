import 'package:finance_ui_app/core/widgets/custom_text_field.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/app_routes.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/spacing_widget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});
  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final key = GlobalKey<FormState>();
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: key,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightWidget(12),
                  BackButtonWidget(),
                  HeightWidget(28),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      "Create new password",
                      style: AppStyles.primaryHeadingStyle,
                    ),
                  ),
                  HeightWidget(10),
                  Text(
                      "Your new password must be unique from those previously used.",
                      style: AppStyles.subtitlesStyle),
                  HeightWidget(32),
                  CustomTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Password";
                      }
                    },
                    controller: newPassword,
                    hintText: "New Password",
                  ),
                  HeightWidget(15),
                  CustomTextField(
                    hintText: "Confirm Password",
                    controller: confirmPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Password";
                      }
                    },
                  ),
                  HeightWidget(32),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        context.pushNamed(AppRoutes.passwordChangedScreen);
                      }
                    },
                    buttonText: "Reset Password",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
