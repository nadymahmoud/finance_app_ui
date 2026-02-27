import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_ui_app/core/styling/app_assets.dart';
import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/core/styling/app_styles.dart';
import 'package:finance_ui_app/core/widgets/spacing_widget.dart';
import 'package:finance_ui_app/features/home_page/widget/custom_home_page_item.dart';
import 'package:finance_ui_app/features/home_page/widget/top_profile_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/carousel_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeightWidget(19),
          TopProfileNotification(),
          HeightWidget(14),
          CarouselWigget(),
          HeightWidget(24),
          Expanded(
            child: GridView(
                padding: EdgeInsets.all(14),
                children: [
                  CustomHomePageItem(
                    title: "Send money",
                    describtion: "Send money",
                    iconData: Icons.send,
                  ),
                  CustomHomePageItem(
                    title: "Pay the bill",
                    describtion: "Lorem ipsum",
                    iconData: Icons.payment,
                  ),
                  CustomHomePageItem(
                    title: "Request",
                    describtion: "Lorem ipsum",
                    iconData: Icons.request_quote_rounded,
                  ),
                  CustomHomePageItem(
                    title: "Contact",
                    describtion: "Lorem ipsum",
                    iconData: Icons.contact_page,
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                )),
          )
        ],
      ),
    );
  }
}
