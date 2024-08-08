import 'package:flutter_application_1/modules/auth/forget_password_screen.dart';
import 'package:flutter_application_1/modules/auth/login_screen.dart';
import 'package:flutter_application_1/modules/auth/register.dart';
import 'package:flutter_application_1/modules/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static String routeSplash = '/';
  static String routeLogin = '/login';
  static String routeForgetPassword = '/forgetpassword';
  static String routeregister = '/register';
}

appRoutes() => [
      ///splash
      GetPage(
          name: Routes.routeSplash,
          page: () => const SplashScreen(),
          transition: Transition.fade),

      ///login

      GetPage(
          name: Routes.routeLogin,
          page: () => const LoginScreen(),
          transition: Transition.fade),

      ///forget password
      GetPage(
        name: Routes.routeForgetPassword,
        page: () => const ForgetPasswordScreen(),
        transition: Transition.fade,
      ),

      ///register
      GetPage(
        name: Routes.routeregister,
        page: () => const Register(),
        transition: Transition.fade,
      ),
    ];
