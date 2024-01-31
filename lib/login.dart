// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:to_do/singup.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 35, 179, 184),    
        
        title: Text("LogIn",

        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
    
body:   Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          
          children: [ SizedBox(height:4,) ,       
            Row(
              children: [
                Text("Welcome To Our Community",
                
                  style: TextStyle( 
                  
                  fontFamily: AutofillHints.addressCity,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  wordSpacing:3,
                  
                  
                ),
                ),
              ],
            ),
            SizedBox(height: 8,),
      
            Row(
              children: [
                Text("Our community is ready to help you"),
              ],
            ),
            
            SizedBox(height: 16),
           Container(
          
            //color: const Color.fromARGB(255, 79, 181, 232),
            height: 70,
            width: 70,
            child: Image.asset('image/circle.png'),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    decoration: InputDecoration(
                    labelText: "E-Mail",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                    ), 
                    ),
                    ),        
        
            SizedBox(height: 10,),

          ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Home(),));
                           }, 
                  
                  child: Text("LogIn"),
                  style: TextButton.styleFrom(
                  minimumSize: Size(285, 40),
                 )
                ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have An Account?",
                style: TextStyle(
                  fontSize: 10),
                  ),
                  TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SingUp(),));
                           }, 
                  
                  child: Text("SingUp",style: TextStyle(fontSize: 10),),
              
                 )
                
              ],
            )      


          ]
          )
          )
      
    );
  }
}