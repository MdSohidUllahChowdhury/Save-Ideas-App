// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
//import 'package:to_do/main.dart';
import 'package:to_do/welcome_page.dart';

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
  _splash()async{
await Future.delayed(Duration(seconds: 2),(){});
Navigator.pushReplacement(
  context, MaterialPageRoute(builder: (context) => Welcome(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(174, 178, 220, 181),
      body: Center(child: Image.asset('image/circle.png')),
    );
  }
}