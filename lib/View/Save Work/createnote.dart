import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/View/Save Work/notescreen.dart';


class CreateNote extends StatelessWidget {
  final bool ismust;
  const CreateNote({super.key, required this.ismust});

  @override
  Widget build(BuildContext context) {

    final formkey = GlobalKey<FormState>();
    

    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
         
         IconButton(
          onPressed:() =>Get.back(),
          icon:const Icon(Icons.swipe_up_alt_rounded,size: 20,
          )
          ),

          Form(
           key: formkey,
           child:Padding(
            padding: const EdgeInsets.all(10),
             child: Column(
              children: [
               TextFormField(
                validator: ismust == true ? (String? value)
                {
                  if(value == null || value.isEmpty)
                  {
                    return 'Please add title';
                  }
                  else {
                    return null;
                  }
                } :
                 null,

                textAlign: TextAlign.start,
                minLines: 2,
                maxLines: 2,
                decoration: InputDecoration(
                 filled: true,
                 fillColor: const Color.fromARGB(255, 110, 105, 105),
                 hintText: 'Add a title',
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
              ),
            ),
          
          const SizedBox(height: 30),
           
           
          TextFormField(
              validator: ismust == true ? (String? detail) {
                if(detail == null || detail.isEmpty){
                  return 'Please add note details';
                }return null;
              } : null,
              textAlign: TextAlign.start,
              maxLines:15,
              minLines:15,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 110, 105, 105),
                hintText: 'Create here your note details',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
                ),
              ),
         ),
          const SizedBox(height: 30),
          
          ElevatedButton(
                    onPressed:() {
                     if(formkey.currentState!.validate()){
                      Get.offAll(const NotePage());
                     }
                    },
                    style: TextButton.styleFrom(
                      minimumSize: const Size(320, 50),
                      elevation: 10,
                      backgroundColor: Colors.orange.shade700,
                     ),
                    child: const Text('Save Change',
                     style: TextStyle(color: Colors.black)
                      )
                    ),
                ],
              ),
            )
            ),

        ],
      ) ,
    );
  }
}