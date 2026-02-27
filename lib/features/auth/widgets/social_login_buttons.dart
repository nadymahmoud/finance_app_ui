import 'package:finance_ui_app/features/auth/widgets/custom_icons_button.dart';
import 'package:flutter/material.dart';

import '../../../core/styling/app_assets.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconsButton(
          onTap: () {},
          title: AppAssets.facebookSvgIcons,
        ),
        CustomIconsButton(
          onTap: () {},
          title: AppAssets.googleSvgIcons,
        ),
        CustomIconsButton(
          onTap: () {},
          title: AppAssets.appleSvgIcons,
        )
      ],
    );
  }
}