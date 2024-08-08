import 'package:flutter_application_1/controller/splash/splash_controller.dart';
import 'package:flutter_application_1/controller/user/user_controller.dart';
import 'package:get/get.dart';

class AppControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(UserController());
  }
}
