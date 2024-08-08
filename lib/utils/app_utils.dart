import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppUtils {
  ///snackbar
  void snackbarShow({
    required String message,
  }) {
    Get.snackbar(
      'MyApp',
      'massage',
      backgroundColor: Colors.black54,
      colorText: Colors.white,
    );
  }
}
