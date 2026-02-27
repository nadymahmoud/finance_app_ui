import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
  
import '../../../core/styling/app_styles.dart';

class CustomOrLoginWidget extends StatelessWidget {
  const CustomOrLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 112,
          child: Divider(),
        ),
        WidthWidget(12),
        Text(
          "Or Login with",
          style: AppStyles.black15Bold.copyWith(color: Color(0xff6A707C)),
        ),
        WidthWidget(12),
        SizedBox(
          width: 112,
          child: Divider(),
        ),
      ],
    );

    
  }
}
