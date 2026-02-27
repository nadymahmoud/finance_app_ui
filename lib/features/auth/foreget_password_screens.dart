import 'package:finance_ui_app/core/routing/app_routes.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/custom_text_field.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:finance_ui_app/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForegetPasswordScreen extends StatefulWidget {
  const ForegetPasswordScreen({super.key});

  @override
  State<ForegetPasswordScreen> createState() => _ForegetPasswordScreenState();
}

class _ForegetPasswordScreenState extends State<ForegetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Form(
          key: _formKey,
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
                    "Forgot Password?",
                    style: AppStyles.primaryHeadingStyle,
                  ),
                ),
                HeightWidget(10),
                Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppStyles.subtitlesStyle),
                HeightWidget(32),
                CustomTextField(
                  hintText: "Enter your email",
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Email";
                    }
                    if (!value.contains("@")) {
                      return "Enter Valid Email";
                    }
                  },
                ),
                HeightWidget(32),
                PrimaryButtonWidget(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  buttonText: "Send Code",
                ),
                HeightWidget(340),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn’t received code?   ",
                        style: AppStyles.black15Bold
                            .copyWith(color: Color(0xff617AFD))),
                    InkWell(
                        onTap: () {
                          GoRouter.of(context)
                              .pushNamed(AppRoutes.createNewPasswordScreen);
                        },
                        child:
                            Text("Resend Code", style: AppStyles.black15Bold))
                  ],
                )),
                HeightWidget(27),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
