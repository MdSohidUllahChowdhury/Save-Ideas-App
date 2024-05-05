import 'package:flutter/material.dart';
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
await  Future.delayed(const Duration(seconds: 2),(){});
Navigator.pushReplacement(
  // ignore: use_build_context_synchronously
  context, MaterialPageRoute(builder: (context) => const Welcome(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(174, 178, 220, 181),
      body: Center(child: Image.asset('image/circle.png')),
    );
  }
}