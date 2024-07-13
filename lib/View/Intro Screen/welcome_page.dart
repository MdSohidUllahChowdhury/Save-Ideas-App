import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Intro Screen/login.dart';
import 'package:to_do/View/Intro Screen/singup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.all(6.0),
        child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("Welcome To Our Community",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            letterSpacing: 1,
          ),
        ),

        const SizedBox(height: 8),

        const Text("Our community is ready to help you"),
        
        const SizedBox(height: 15),
        
        Image.asset('lib/Controller/Assets/image/circle.png',height: 230,),
        
        const SizedBox(height:10),

        const Text("Get In Through"),
        const SizedBox(height:20),
        
        ElevatedButton(

            onPressed: () =>Get.offAll(const SingUp()),
            style: TextButton.styleFrom(
                 minimumSize: const Size(280, 50),
                 backgroundColor: Colors.orange),
            child: const Text("SingUp",
             style:TextStyle(
              fontSize: 18,
              color: Colors.black,
              ) 
             )
            ),
        const SizedBox(height:20),
        
        ElevatedButton(
            onPressed:() => Get.offAll(const LogIn()),
            style: TextButton.styleFrom(
              minimumSize: const Size(280, 50),
            ),
            child: const Text("LogIn",
             style:TextStyle(
              fontSize: 18,
              color: Colors.black,
              )
             )
            ),
      ]
      
      ),
     )
    );
  }
}
