import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Intro Screen/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp((ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(375, 725),
      child: GetMaterialApp(
        theme: ThemeData(fontFamily: 'Kenia02', useMaterial3: true),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ))));
}
