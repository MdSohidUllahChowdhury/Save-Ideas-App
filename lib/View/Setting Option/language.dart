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
          icon:const Icon(Icons.swipe_up_alt_rounded,size: 20,
          )
          ),
         const SizedBox(height: 10),

         const Text("Language",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
                ),
          ),
         const SizedBox(height:8),
         const Text("Your setting option so change your way you want"),
         const SizedBox(height:40),
         const ListCard(
          titlename: Text('বাংলা',textAlign: TextAlign.center,),  
          colors:Colors.greenAccent
         ),
         const ListCard(  
          titlename:Text('ENGLISH',textAlign: TextAlign.center,),  
          colors:Colors.blueGrey,
         ),
         const SizedBox(height:30),
          ElevatedButton(
          onPressed:() => Get.offAll(const Home()),
          style: TextButton.styleFrom(
            minimumSize: const Size(300, 50),
            elevation: 10,
            backgroundColor: Colors.blue.shade700,
            ),
          child: const Text('Save Change',
            style: TextStyle(color: Colors.black)
            )
            ),
        
        ]
     )
   );
  }
}
