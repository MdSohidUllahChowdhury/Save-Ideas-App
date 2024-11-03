import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/Model/home.dart';
import 'package:to_do/View/Save Work/createnote.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
        
           IconButton(
            onPressed:() =>Get.to(()=>const Home()),
            icon:const Icon(Icons.swipe_up_alt_rounded,
             size: 20,
             )
            ),
        
           const SizedBox(height: 10),
        
           const Text("Work ToDay's",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),
            ),
        
           const SizedBox(height:6),
        
           const Text('Make your job easier with take notes',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize:14,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2
              ),
            ),
        
           const SizedBox(height: 35),
            
            MaterialButton(
              height: 240,
              minWidth: 250,
              color: Colors.greenAccent.shade400,
              shape:const CircleBorder(),
              elevation: 40,
              hoverColor: Colors.deepPurpleAccent.shade400,
              
              onPressed:() => Get.to(()=>const CreateNote(ismust: true,)),
              
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_box,size: 45,),
        
                  SizedBox(height: 15,),

                  Text('Create a Note',
                    style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    letterSpacing: 1.2,
                    fontSize: 18),
                 ),
                 
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
