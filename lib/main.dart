import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/controller/app_controller_binding.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/utils/constant.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
    configDialog();
  });
}

void configDialog() {
  EasyLoading.instance
  ..displayDuration = const Duration(milliseconds: 2000)
  ..indicatorType = EasyLoadingIndicatorType.circle
  ..loadingStyle = EasyLoadingStyle.dark
  ..indicatorSize = 45.0
  ..radius = 10.0
  ..progressColor = Colors.white
  ..backgroundColor = Colors.black
  ..indicatorColor = Colors.grey
  ..textColor = Colors.white
  ..maskColor = Colors.black.withOpacity(0.5)
  ..userInteractions = false
  ..dismissOnTap = false;

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyTest',
      builder: (context, child) {
        setupScreenUtil(context);
        return FlutterEasyLoading(
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
        ) ,
        ),
        );
      },
      initialRoute: Routes.routeSplash,
      initialBinding: AppControllerBinding(),
      getPages: appRoutes(),
      defaultTransition: Transition.fade,
    );
  }
}

class MyBehavior extends ScrollBehavior{
  Widget buildViewPortChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
