import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconsButton extends StatelessWidget {
  const CustomIconsButton({super.key, this.onTap, required this.title});
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 105.w,
          height: 56.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Color(0xffE8ECF4)),
          ),
          child: SvgPicture.asset(
            title,
            fit: BoxFit.none,
            height: 24.h,
            width: 12.w,
          )),
    );
  }
}
