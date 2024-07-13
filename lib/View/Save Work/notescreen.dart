import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/Model/home.dart';
import 'package:to_do/View/Save Work/createnote.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         IconButton(
          onPressed:() =>Get.to(const Home()),
          icon:const Icon(Icons.swipe_up_alt_rounded,size: 20,
          )
          ),
         const SizedBox(height: 10),
         const Text("Work ToDay's",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
         const SizedBox(height: 4),
         const Text('Make your job easier with take notes',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
         const SizedBox(height: 35),
          
          Center(
            child: MaterialButton(
              height: 200,
              minWidth: 250,
              color: Colors.greenAccent,
              shape: const CircleBorder(),
              elevation: 40,
              onPressed:() => Get.to(const CreateNote(ismust: true,)),
              child: const Text('Create a note',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
