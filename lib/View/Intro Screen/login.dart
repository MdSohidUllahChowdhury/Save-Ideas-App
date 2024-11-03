import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/Model/home.dart';
import 'package:to_do/View/Intro Screen/singup.dart';
import 'package:to_do/Widgets/form.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {

        // ignore: no_leading_underscores_for_local_identifiers
        final _formkey = GlobalKey<FormState>();

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
          const Text("Welcome To Our Community",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        
          const SizedBox(height: 8),

          const Text("Our community is ready to help you"),

          const SizedBox(height: 16),

          Image.asset('lib/Controller/Assets/image/circle.png',
          fit: BoxFit.fitWidth,
          height: 175,
          ),

          const SizedBox(height: 12),
          
           Form(
            key: _formkey,
            child: Column(
              children: [
                
                const FormSection(
                  nameit: 'Email',
                  isMust:true ,
                  ),
                
                const SizedBox(height: 10,), 
                
                const FormSection(
                  nameit: 'Password',
                  ispassword: true,
                  isMust: true,
                  ),
        
                const SizedBox(height: 25),
               
               ElevatedButton(
                 onPressed:() {
                if(_formkey.currentState!.validate())
                {
                Get.offAll(()=>const Home());
                }
               },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade400,
                minimumSize: const Size(260, 50),
               ),
              child: const Text("LogIn",
               style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.2,
                color: Colors.black
                 )
                )
               ),  
              ],
             )
            ), 
        
          const SizedBox(height: 12),

          const Text("Don't Have An Account?",
            style: TextStyle(fontSize: 10),
          ),
        
          TextButton(
            onPressed:() => Get.to(()=>const SingUp()),
            child: const Text("SingUp",
              style: TextStyle(fontSize: 10),
            ),
          ),
          
        ]
      )
    );
  }
}
