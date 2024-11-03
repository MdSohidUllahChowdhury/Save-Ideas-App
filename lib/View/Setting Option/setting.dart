import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Setting Option/language.dart';
import 'package:to_do/View/Intro Screen/login.dart';
import 'package:to_do/View/Setting Option/personality.dart';
import 'package:to_do/Widgets/listcard.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         IconButton(
          onPressed:() =>Get.back(),
          icon:const Icon(Icons.swipe_up_alt_rounded,
          size: 20,
           )
          ),

         const SizedBox(height: 10),
         
         const Text("Settings",
            style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold
                ),
          ),

         const SizedBox(height:8),

         const Text("Your setting option so change your way you want",
          style: TextStyle(
                fontSize:13,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2
               ),
              ),
         
         const SizedBox(height:40),
         
         ListCard(
          addIconOne:const Icon(Icons.person),
          titlename:const Text('Profile'), 
          ontap:() => Get.to(()=>const Personality()), 
          colors:Colors.orange.shade400
         ),
         ListCard(  
          addIconOne:const Icon(Icons.language),
          titlename:const Text('Language'), 
          ontap:() => Get.to(()=>const Language()), 
          colors:Colors.greenAccent.shade400,
         ),
         ListCard(
          addIconOne:const Icon(Icons.note_alt),
          titlename:const Text('Terms and Condition'), 
          ontap:() => Get.to(()=>const Setting()), 
          colors:Colors.pinkAccent.shade400,
        ),
         ListCard(
          addIconOne:const Icon(Icons.login_outlined),
          titlename:const Text('Log Out'), 
          ontap:() => Get.to(()=>const LogIn()), 
          colors:Colors.redAccent.shade400,
        ),
          
        ],
      ),
    );
  }
}
