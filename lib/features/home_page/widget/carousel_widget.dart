import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_item_widget.dart';

class CarouselWigget extends StatefulWidget {
  const CarouselWigget({super.key});

  @override
  State<CarouselWigget> createState() => _CarouselWiggetState();
}

class _CarouselWiggetState extends State<CarouselWigget> {
  int currentIndexPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: [
              CardItemWidget(),
              CardItemWidget(
                color: Color(0xff303A6E),
              ),
              CardItemWidget(),
            ],
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              viewportFraction: 0.8,
              padEnds: false,
              height: 240.h,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndexPosition = index;
                });
              },
            )),
        HeightWidget(14),
        DotsIndicator(
          position: currentIndexPosition.toDouble(),
          dotsCount: 3,
          decorator: DotsDecorator(
              size: Size.square(9),
              activeSize: Size(18, 9),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      ],
    );
  }
}
