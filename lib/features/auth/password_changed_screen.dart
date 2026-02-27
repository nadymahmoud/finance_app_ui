import 'package:finance_ui_app/core/styling/app_assets.dart';
import 'package:finance_ui_app/core/widgets/primary_button_widget.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/styling/app_styles.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeightWidget(240),
              Center(child: SvgPicture.asset(AppAssets.starSvgIcons)),
              HeightWidget(20),
              Text(
                "Password complete",
                style: AppStyles.primaryHeadingStyle,
              ),
              HeightWidget(8),
              Text(
                "Your password has been changed successfully.",
                style: AppStyles.subtitlesStyle,
              ),
              HeightWidget(32),
              PrimaryButtonWidget(
                buttonText: "Back to Login",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
