// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:to_do/sub_work_two.dart';

class SubWork extends StatelessWidget {
  const SubWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      Padding(
        padding: const EdgeInsets.all(8.0),
        
        child:        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Row(
              children: [
      
                Text("Work ToDay's",
                  style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 4),
              ],              
            ),
            SizedBox(height: 6,),
            Row(
                  children: [
                    Text('Make your job easier with our reminders',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                  ],
                ),
            SizedBox(height: 35,),

        MaterialButton(
          height: 250,
          minWidth: 250,
        color: Colors.greenAccent,
        shape:  CircleBorder(),
        elevation: 40,

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SubWorkTwo(),));
        },

        child: Text('Make A Wish List',
             style: TextStyle(
             color: const Color.fromARGB(255, 9, 0, 0),
             fontSize:18),
        ),
        )

          ],
        ),
      ),
    );
  }
}