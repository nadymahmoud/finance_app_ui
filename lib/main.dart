import 'package:finance_ui_app/core/routing/router_generator_config.dart';
import 'package:finance_ui_app/core/styling/theme_data.dart';
 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: RouterGeneratorConfig.router,
          theme: AppTheme.lightTheme,
        );
      },
      designSize: const Size(375, 812),
      
    );
  }
}
