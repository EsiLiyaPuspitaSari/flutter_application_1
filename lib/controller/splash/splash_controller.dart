import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void next_activity() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed(Routes.routeLogin);
    },);
  }
   
}

