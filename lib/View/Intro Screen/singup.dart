import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Intro Screen/login.dart';
import 'package:to_do/Widgets/form.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    
    // ignore: no_leading_underscores_for_local_identifiers
    final _formkey = GlobalKey<FormState>();
    
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
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
              const SizedBox(height: 12),
              Image.asset('lib/Controller/Assets/image/circle.png',
              fit: BoxFit.fitWidth,
              height: 100,),
              const SizedBox(height: 12),
              
               Form(
                key: _formkey,
                child: Column(
                  children: [
                    
                    const FormSection(
                      nameit: 'Frist Name',
                      isMust:true ,
                      ),
                    
                    const SizedBox(height:4), 
                   
                    const FormSection(
                      nameit: 'Last Name',
                      isMust:true ,
                      ),
                    
                    const SizedBox(height:4), 
                    
                    const FormSection(
                      nameit: 'Email',
                      isMust:true ,
                      ),
                    
                    const SizedBox(height:4), 
                    
                    const FormSection(
                      nameit: 'Password',
                      ispassword: true,
                      isMust: true,
                      ),

                    const SizedBox(height:20),
                   
                   ElevatedButton(
                  onPressed:() {
                   
                    if(_formkey.currentState!.validate()
                    )
                    {
                    Get.offAll(const LogIn());
                    }

                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(285, 50),
                   ),
                  child: const Text('Confirm',
                   style: TextStyle(color: Colors.black)
                    )
                   ),
                     
                  ],
                )
              ), 


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have An Account?",
                  style: TextStyle(fontSize: 10),
                ),
            TextButton(
              onPressed: () => Get.to(const LogIn()),
              child: const Text("LogIn",
                style: TextStyle(fontSize: 10),
              ),
            ),
              ],
            ),

          ]
          ),
        )
      );
  }
}
