import 'package:flutter/material.dart';
import 'package:to_do/splashscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(ensureScreenSize: true,
      designSize:const Size(350, 640),
      child: 
      MaterialApp(
      theme: ThemeData(
        fontFamily: 'Kenia'
      ),
      home:const SplashScreen(),
      debugShowCheckedModeBanner: false,      
    )
    );
    
  }
}
