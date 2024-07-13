import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Intro Screen/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    _splash();
    super.initState();
  }
  _splash() async {
     await  Future.delayed(
      const Duration(seconds: 2),(){}
      );
      Get.offAll(const Welcome());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Image.asset('lib/Controller/Assets/image/circle.png',height: 270,)
        ),
    );
  }
}