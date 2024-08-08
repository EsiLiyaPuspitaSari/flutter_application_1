
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void setupScreenUtil(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double baseHeight = MediaQuery.of(context).size.height;

    double defaulScreeenUtilWidth = 1080;
    double defaulScreeenUtilHeight = 1920;

    double iPadPro12InchWidth = 2048;
    double iPadPro12InchHeight = 2732;

    double designWidth = 0;
    double designHeight = 0;

    if (baseWidth >=768) {
      designWidth = iPadPro12InchWidth;
    } else {
      designWidth = defaulScreeenUtilWidth;
    }

    if (baseHeight >= 1024) {
      designHeight = iPadPro12InchHeight;
    }else {
      designHeight = defaulScreeenUtilHeight;
    }

    ScreenUtil.init(context, designSize: Size(designWidth, designHeight));


}

TextStyle styleTitle = TextStyle(
    fontSize: setFontSize(48), color: Colors.black, fontWeight: FontWeight.w700);

TextStyle styleSemiTitle = TextStyle(
    fontSize: setFontSize(36), color: Colors.black, fontWeight: FontWeight.w500);

TextStyle styleSubtitle = TextStyle(
    fontSize: setFontSize(32), color: Colors.black, fontWeight: FontWeight.w400);

TextStyle styleSubtitleLight = TextStyle(
    fontSize: setFontSize(32), color: Colors.black, fontWeight: FontWeight.w300);

double setFontSize(double size) => size.sp;
double setWidth(double width) => ScreenUtil().setWidth(width);
double setHeight(double height) => ScreenUtil().setHeight(height);


