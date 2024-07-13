import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/Model/home.dart';
import 'package:to_do/Widgets/form.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  @override
  Widget build(BuildContext context) {

    final formkey = GlobalKey<FormState>();

    return Scaffold(
      
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
         IconButton(
          onPressed:() =>Get.back(),
          icon:const Icon(Icons.swipe_up_alt_rounded,size: 20,
          )
          ),
        
        const SizedBox(height:15),
        const CircleAvatar(
          radius:35,
          backgroundImage: AssetImage('lib/Controller/Assets/image/shakil.jpg'),
        ),
        const SizedBox(height:4),
        const Text('Edit Profile',style: TextStyle(color: Colors.black),),
        
                      Form(
                key: formkey,
                child: Column(
                  children: [
                    
                    const FormSection(
                      nameit: 'Frist Name',
                      isMust:true,
                      ),
                    
                    const SizedBox(height:4), 
                   
                    const FormSection(
                      nameit: 'Last Name',
                      isMust:true ,
                      ),
                    
                    const SizedBox(height:4), 
                    
                    const FormSection(
                      nameit: 'Email',
                      ),
                    
                    const SizedBox(height:4), 
                    
                    const FormSection(
                      nameit: 'Password',
                      ispassword: true,
                     
                      ),
                    const SizedBox(height:4), 
                    
                    const FormSection(
                      nameit: 'Country',
                      ),

                    const SizedBox(height:20),
                   
                   ElevatedButton(
                  onPressed:() {
                   
                    if(formkey.currentState!.validate()
                    )
                    {
                    Get.to(const Home());
                    }

                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size(285, 50),
                    elevation: 10,
                    backgroundColor: Colors.orange.shade700,
                   ),
                  child: const Text('Save Change',
                   style: TextStyle(color: Colors.black)
                    )
                   ),
                     
                  ],
                )
              ), 
       
      ],
    ),

);
}
}