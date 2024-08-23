import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/Model/home.dart';
import 'package:to_do/Widgets/listcard.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
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

         const Text("Language",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
                ),
          ),

         const SizedBox(height:8),

         const Text("Your setting option so change your way you want",
         style: TextStyle(
                fontSize:13,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2
              )
            ),

         const SizedBox(height:40),

          ListCard(
          titlename:const Text('বাংলা',textAlign: TextAlign.center,),  
          colors:Colors.redAccent.shade400
         ),

          ListCard(  
          titlename:const Text('ENGLISH',textAlign: TextAlign.center,),  
          colors:Colors.blueAccent.shade400,
         ),

         const SizedBox(height:30),

          ElevatedButton(
          onPressed:() => Get.offAll(const Home()),
          style: TextButton.styleFrom(
            minimumSize: const Size(260, 50),
            elevation: 10,
            backgroundColor: Colors.greenAccent.shade400,
            ),
          child: const Text('Save Change',
            style: TextStyle(
              fontSize: 14,
              letterSpacing: 1.2,
              color: Colors.black)
              )
            ),
        
       ]
     )
   );
  }
}
