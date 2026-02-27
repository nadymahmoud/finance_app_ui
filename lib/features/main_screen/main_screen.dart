import 'package:finance_ui_app/core/styling/app_color.dart';
import 'package:finance_ui_app/features/home_page/home_page_screen.dart';
import 'package:finance_ui_app/features/my_card/my_card.dart';
import 'package:finance_ui_app/features/statistic/statistic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    HomePageScreen(),
    StatisticScreen(),
    Container(
      color: Colors.green,
    ),
    MyCardScreen(),
    Container(
      color: Colors.black,
    )
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.greyColor,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                  size: 24.sp,
                )),
            BottomNavigationBarItem(
                label: "Statistic",
                icon: Icon(
                  Icons.manage_history,
                  size: 24.sp,
                )),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 48.w,
                  height: 48.h,
                  child: Icon(
                    Icons.add,
                    size: 24.sp,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryColor),
                )),
            BottomNavigationBarItem(
                label: "My Card",
                icon: Icon(
                  Icons.card_membership_outlined,
                  size: 24.sp,
                )),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person,
                  size: 24.sp,
                )),
          ]),
    );
  }
}
