import 'package:finance_ui_app/core/routing/app_routes.dart';
import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/custom_text_field.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/primary_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final key = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
                    width: 280.w,
                    child: Text(
                      " Welcame Back! Again! ",
                      style: AppStyles.primaryHeadingStyle,
                    ),
                  ),
                  HeightWidget(32),
                  CustomTextField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Your Email";
                      }
                    },
                    hintText: "Email  Your Email",
                  ),
                  HeightWidget(16),
                  CustomTextField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email  Your Password";
                      }
                      if (value.length < 8) {
                        return "Password Must Be At Least 8 Characters";
                      }
                    },
                    hintText: "Enter Your Password",
                    suffixIcons: Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                  ),
                  HeightWidget(16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forget Password?",
                      style: AppStyles.black15Bold
                          .copyWith(color: Color(0xff6A707C)),
                    ),
                  ),
                  HeightWidget(30),
                  PrimaryButtonWidget(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                      GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                    },
                    buttonText: "Login",
                  ),
                  HeightWidget(35),
                  CustomOrLoginWidget(),
                  HeightWidget(22),
                  SocialLoginButtons(),
                  HeightWidget(130),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ",
                          style: AppStyles.black15Bold
                              .copyWith(color: Color(0xff617AFD))),
                      InkWell(
                          onTap: () {
                            GoRouter.of(context)
                                .pushNamed(AppRoutes.registerScreen);
                          },
                          child: Text("Register Now",
                              style: AppStyles.black15Bold))
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
