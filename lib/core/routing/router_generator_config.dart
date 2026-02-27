import 'package:finance_ui_app/core/routing/app_routes.dart';
import 'package:finance_ui_app/features/auth/create_new_password_screen.dart';
import 'package:finance_ui_app/features/auth/foreget_password_screens.dart';
import 'package:finance_ui_app/features/auth/login_screen.dart';
import 'package:finance_ui_app/features/auth/password_changed_screen.dart';
import 'package:finance_ui_app/features/auth/register_screen.dart';
import 'package:finance_ui_app/features/main_screen/main_screen.dart';
import 'package:finance_ui_app/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_ui_app/features/verify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGeneratorConfig {
  static GoRouter router =
      GoRouter(initialLocation: AppRoutes.onBoardingScreen, routes: [
    GoRoute(
      name: AppRoutes.onBoardingScreen,
      path: AppRoutes.onBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
      GoRoute(
      name: AppRoutes.passwordChangedScreen,
      path: AppRoutes.passwordChangedScreen,
      builder: (context, state) => const PasswordChangedScreen(),
    ),
    GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen()),
    GoRoute(
        path: AppRoutes.forgetPasswordScreen,
        name: AppRoutes.forgetPasswordScreen,
        builder: (context, state) => const ForegetPasswordScreen()),
         GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen()),
          GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen()),
          GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen()),

 
  ]);
}
