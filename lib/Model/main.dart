import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Intro Screen/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize:const Size(360, 680),
      child: GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Kenia'
        ),
      home:const SplashScreen(),
      debugShowCheckedModeBanner: false,      
    )
    );
  }
}
