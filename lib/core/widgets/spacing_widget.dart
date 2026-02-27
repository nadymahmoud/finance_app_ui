import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthWidget extends StatelessWidget {
  const WidthWidget( this.width,{super.key});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
    );
  }
}
class HeightWidget extends StatelessWidget {
  const HeightWidget( this.height,{super.key});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.w,
    );
  }
}
