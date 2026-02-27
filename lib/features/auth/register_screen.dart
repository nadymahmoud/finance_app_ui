import 'package:finance_ui_app/core/routing/app_routes.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/spacing_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController userNameController;
  late TextEditingController emailController;

  late TextEditingController passwordController;

  late TextEditingController confirmPasswordController;
  final key = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
                    "Hello! Register to get started",
                    style: AppStyles.primaryHeadingStyle,
                  ),
                ),
                HeightWidget(32),
                CustomTextField(
                  controller: userNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Username";
                    }
                  },
                  hintText: "Username",
                ),
                HeightWidget(12),
                CustomTextField(
                  hintText: "Email",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Email";
                    }
                    if (!value.contains("@")) {
                      return "Enter Valid Email @";
                    }
                  },
                  controller: emailController,
                ),
                HeightWidget(12),
                CustomTextField(
                  hintText: "Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                  },
                  controller: passwordController,
                ),
                HeightWidget(12),
                CustomTextField(
                  hintText: "Confirm password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 characters";
                    }
                    if (value != passwordController.text) {
                      return "Password does not match";
                    }
                  },
                  controller: confirmPasswordController,
                ),
                HeightWidget(30),
                PrimaryButtonWidget(
                  onPressed: () {
                    if (key.currentState!.validate()) {}
                  },
                  buttonText: "Register",
                ),
                HeightWidget(35),
                CustomOrLoginWidget(),
                HeightWidget(22),
                SocialLoginButtons(),
                HeightWidget(30),
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
                              .pushNamed(AppRoutes.forgetPasswordScreen);
                        },
                        child:
                            Text("Register Now", style: AppStyles.black15Bold))
                  ],
                )),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
