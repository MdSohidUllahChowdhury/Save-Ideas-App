// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:to_do/setting.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Language",
                  style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.countryName ),
                  ),SizedBox(height: 8,),  
              ],
            ),
             Row(
               children: [
                 Text("Your setting so that we are comfortable"),
               ],
             ),
  Padding(
                  padding: const EdgeInsets.all(6),
                  child:Card(
                    child: ListTile(
                      
                      onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home(),));
                                   },
                    
                      
                      title: Center(child: Text('বাংলা')),
                      trailing: Icon(Icons.arrow_forward_ios),
                      iconColor: Colors.white,
                      tileColor: Colors.greenAccent,
                    ),
                    ),
                    ),
  Padding(
                  padding: const EdgeInsets.all(6),
                  child:Card(
                    child: ListTile(
                      
                      onTap:  (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home(),));
                                   },
                    
                      
                      title: Center(child: Text('ENGLISH')),
                      trailing: Icon(Icons.arrow_forward_ios),
                      iconColor: Colors.white,
                      tileColor: Colors.blueAccent,
                    ),
                    ),
                    ),

                    ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));
                      },
                     child: Text("Save"))
          ]
          )
          )
      
    );
  }
}